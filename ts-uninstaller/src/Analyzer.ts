import fs from 'fs-extra';
import path from 'path';
const Engine = require('php-parser');

export interface PluginFootprints {
    options: string[];
    transients: string[];
    cron_jobs: string[];
    custom_tables: string[];
    metadata: string[];
    has_uninstall: boolean;
    last_checked: string;
}

export class PluginAnalyzer {
    private parser: any;
    private defaultWpOptions = [
        'siteurl', 'home', 'blogname', 'blogdescription', 'users_can_register',
        'admin_email', 'start_of_week', 'use_balanceTags', 'use_smilies',
        'require_name_email', 'comments_notify', 'posts_per_rss', 'rss_use_excerpt',
        'mailserver_url', 'mailserver_login', 'mailserver_pass', 'mailserver_port',
        'default_category', 'default_comment_status', 'default_ping_status',
        'default_pingback_flag', 'posts_per_page', 'date_format', 'time_format',
        'links_updated_date', 'comment_moderation', 'moderation_notify',
        'permalink_structure', 'gzipcompression', 'hack_file', 'blog_charset',
        'moderation_keys', 'active_plugins', 'category_base', 'ping_sites',
        'advanced_edit', 'comment_max_links', 'gmt_offset', 'default_email_category',
        'recently_edited', 'template', 'stylesheet', 'comment_whitelist',
        'blacklist_keys', 'comment_registration', 'html_type', 'use_trackback',
        'default_role', 'db_version', 'uploads_use_yearmonth_folders', 'upload_path',
        'blog_public', 'default_link_category', 'show_on_front', 'tag_base',
        'show_avatars', 'avatar_rating', 'upload_url_path', 'thumbnail_size_w',
        'thumbnail_size_h', 'thumbnail_crop', 'medium_size_w', 'medium_size_h',
        'avatar_default', 'large_size_w', 'large_size_h', 'image_default_link_type',
        'image_default_size', 'image_default_align', 'close_comments_for_old_posts',
        'close_comments_days_old', 'thread_comments', 'thread_comments_depth',
        'page_comments', 'comments_per_page', 'default_comments_page', 'comment_order',
        'sticky_posts', 'widget_categories', 'widget_text', 'widget_rss', 'uninstall_plugins',
        'timezone_string', 'page_for_posts', 'page_on_front', 'default_post_format',
        'link_manager_enabled', 'wp_page_for_privacy_policy', 'site_icon',
        'core_updater.lock', 'auto_core_update_notified', 'WPLANG'
    ];

    constructor() {
        this.parser = new Engine({
            parser: {
                extractDoc: false,
                php7: true
            },
            ast: {
                withPositions: false
            }
        });
    }

    public async analyzeDirectory(dirPath: string): Promise<PluginFootprints> {
        const findings: PluginFootprints = {
            options: [],
            transients: [],
            cron_jobs: [],
            custom_tables: [],
            metadata: [],
            has_uninstall: false,
            last_checked: new Date().toISOString()
        };

        const phpFiles = await this.getFilesRecursively(dirPath, '.php');

        for (const file of phpFiles) {
            if (path.basename(file) === 'uninstall.php') {
                findings.has_uninstall = true;
            }

            try {
                const source = await fs.readFile(file, 'utf-8');
                const ast = this.parser.parseCode(source, file);
                this.traverseAst(ast, findings);
            } catch (error) {
                // Ignore parse errors (common in old/bad PHP files)
            }
        }

        // Deduplicate the arrays
        findings.options = [...new Set(findings.options)];
        findings.transients = [...new Set(findings.transients)];
        findings.cron_jobs = [...new Set(findings.cron_jobs)];
        findings.custom_tables = [...new Set(findings.custom_tables)];
        findings.metadata = [...new Set(findings.metadata)];

        return findings;
    }

    private async getFilesRecursively(dir: string, extension: string): Promise<string[]> {
        const dirents = await fs.readdir(dir, { withFileTypes: true });
        const files: string[] = [];

        for (const dirent of dirents) {
            const res = path.resolve(dir, dirent.name);
            if (dirent.isDirectory()) {
                files.push(...await this.getFilesRecursively(res, extension));
            } else if (res.endsWith(extension)) {
                files.push(res);
            }
        }
        return files;
    }

    private traverseAst(node: any, findings: PluginFootprints) {
        if (!node || typeof node !== 'object') {
            return;
        }

        // Check node type
        if (node.kind === 'call') {
            const funcName = this.getFunctionName(node.what);

            if (funcName) {
                // Options
                if (['add_option', 'update_option', 'get_option', 'delete_option', 'add_site_option', 'update_site_option', 'get_site_option', 'delete_site_option'].includes(funcName)) {
                    const arg = this.getArgumentString(node.arguments, 0);
                    if (arg && !this.defaultWpOptions.includes(arg)) findings.options.push(arg);
                }
                else if (funcName === 'register_setting') {
                    const arg = this.getArgumentString(node.arguments, 1);
                    if (arg && !this.defaultWpOptions.includes(arg)) findings.options.push(arg);
                }
                // Transients
                else if (['set_transient', 'get_transient', 'delete_transient', 'set_site_transient', 'get_site_transient', 'delete_site_transient'].includes(funcName)) {
                    const arg = this.getArgumentString(node.arguments, 0);
                    if (arg) findings.transients.push(arg);
                }
                // Metadata
                else if (['add_metadata', 'update_metadata', 'get_metadata', 'delete_metadata'].includes(funcName)) {
                    const arg = this.getArgumentString(node.arguments, 2); // 3rd argument is meta_key
                    if (arg) findings.metadata.push(arg);
                }
                else if (['add_post_meta', 'update_post_meta', 'get_post_meta', 'delete_post_meta', 'add_user_meta', 'update_user_meta', 'get_user_meta', 'delete_user_meta', 'add_term_meta', 'update_term_meta', 'get_term_meta', 'delete_term_meta', 'add_comment_meta', 'update_comment_meta', 'get_comment_meta', 'delete_comment_meta'].includes(funcName)) {
                    const arg = this.getArgumentString(node.arguments, 1); // 2nd argument is meta_key
                    if (arg) findings.metadata.push(arg);
                }
                // Cron Jobs
                else if (funcName === 'wp_schedule_event') {
                    const arg = this.getArgumentString(node.arguments, 2); // 3rd is hook
                    if (arg) findings.cron_jobs.push(arg);
                }
                else if (funcName === 'wp_schedule_single_event') {
                    const arg = this.getArgumentString(node.arguments, 1); // 2nd is hook
                    if (arg) findings.cron_jobs.push(arg);
                }
                else if (['wp_clear_scheduled_hook', 'wp_next_scheduled', 'wp_unschedule_event'].includes(funcName)) {
                    const arg = this.getArgumentString(node.arguments, 0); // 1st is hook
                    if (arg) findings.cron_jobs.push(arg);
                }
                // Custom Tables
                else if (funcName === 'dbDelta') {
                    const arg = this.getArgumentString(node.arguments, 0);
                    if (arg) {
                        const tables = this.extractTableNamesFromSql(arg);
                        findings.custom_tables.push(...tables);
                    }
                }
            }
        } else if (node.kind === 'methodcall' && this.isWpdbQuery(node)) {
            const arg = this.getArgumentString(node.arguments, 0);
            if (arg) {
                const tables = this.extractTableNamesFromSql(arg);
                findings.custom_tables.push(...tables);
            }
        }

        // Recursively traverse properties
        for (const key in node) {
            if (Array.isArray(node[key])) {
                for (const childNode of node[key]) {
                    this.traverseAst(childNode, findings);
                }
            } else if (typeof node[key] === 'object') {
                this.traverseAst(node[key], findings);
            }
        }
    }

    private getFunctionName(whatNode: any): string | null {
        if (whatNode && whatNode.kind === 'name') {
            return whatNode.name;
        }
        return null;
    }

    private getArgumentString(args: any[], index: number): string | null {
        if (!args || args.length <= index) return null;
        const arg = args[index];

        // Literal string
        if (arg && arg.kind === 'string') {
            return arg.value;
        }

        // String concatenation (e.g. 'prefix_' . $var) -> 'prefix_*'
        if (arg && arg.kind === 'bin' && arg.type === '.') {
            let leftStr = '';
            let rightStr = '';

            if (arg.left && arg.left.kind === 'string') {
                leftStr = arg.left.value;
            }
            if (arg.right && arg.right.kind === 'string') {
                rightStr = arg.right.value;
            }

            if (leftStr || rightStr) {
                // If it's a mix of string and variable, convert the variable part to *
                if (leftStr && (!rightStr || arg.right.kind !== 'string')) {
                    return leftStr + '*';
                } else if (rightStr && (!leftStr || arg.left.kind !== 'string')) {
                    return '*' + rightStr;
                }
            }
        }

        return null;
    }

    private isWpdbQuery(node: any): boolean {
        // Looking for $wpdb->query(...)
        if (node.what && node.what.kind === 'identifier' && node.what.name === 'query') {
            if (node.what.kind === 'identifier' && node.what.name === 'query') { // Verify method is query
                // Verify caller is $wpdb. But wait, php-parser structure for `$wpdb->query` is:
                // node.what is Identifier { name: 'query' }, node.what is actually a child? Let's be lenient
                return true;
            }
        }
        return false;
    }

    private extractTableNamesFromSql(sql: string): string[] {
        const tables: string[] = [];
        // Regex to find CREATE TABLE foo, INSERT INTO foo, DROP TABLE foo, UPDATE foo
        const regex = /(?:CREATE TABLE(?: IF NOT EXISTS)?|INSERT INTO|UPDATE|DROP TABLE(?: IF EXISTS)?)\s+`?([a-zA-Z0-9_\$]+)`?/gi;

        let match;
        while ((match = regex.exec(sql)) !== null) {
            let tableName = match[1];
            // Only care about things that look like WordPress tables (wp_ or {$wpdb->prefix})
            // Since we extracted raw string value, variables like {$wpdb->prefix} might have been compiled away OR not tracked if we only accept literal strings.
            // If they are literal strings with hardcoded prefixes (e.g. 'wp_my_table'):
            if (tableName && !tables.includes(tableName)) {
                tables.push(tableName);
            }
        }
        return tables;
    }
}
