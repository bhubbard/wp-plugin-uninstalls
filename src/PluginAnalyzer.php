<?php

namespace WPUninstaller;

use PhpParser\Error;
use PhpParser\NodeTraverser;
use PhpParser\ParserFactory;
use PhpParser\NodeVisitorAbstract;
use PhpParser\Node;

class PluginAnalyzer {
    private $parser;

    public function __construct() {
        $this->parser = (new ParserFactory)->createForNewestSupportedVersion();
    }

    /**
     * Scans a directory and analyzes all PHP files.
     * 
     * @param string $directoryPath The extracted plugin directory.
     * @return array The analyzed findings.
     */
    public function analyzeDirectory(string $directoryPath): array {
        $findings = [
            'options' => [],
            'transients' => [],
            'cron_jobs' => [],
            'custom_tables' => [],
            'metadata' => []
        ];

        $files = $this->getPhpFiles($directoryPath);

        foreach ($files as $file) {
            $code = file_get_contents($file);
            try {
                $stmts = $this->parser->parse($code);
                $traverser = new NodeTraverser();
                $visitor = new WPFootprintVisitor($findings);
                $traverser->addVisitor($visitor);
                $traverser->traverse($stmts);
                
                // Merge findings from this file
                $findings = $this->mergeFindings($findings, $visitor->getFindings());

            } catch (Error $e) {
                // Ignore parse errors in individual files to keep moving
                error_log("Parse error in $file: {$e->getMessage()}");
            }
        }

        // Deduplicate
        foreach ($findings as $key => $values) {
            $findings[$key] = array_values(array_unique($values));
        }

        return $findings;
    }

    private function getPhpFiles(string $dir): array {
        $iterator = new \RecursiveIteratorIterator(new \RecursiveDirectoryIterator($dir));
        $phpFiles = [];
        foreach ($iterator as $file) {
            if ($file->isFile() && $file->getExtension() === 'php') {
                $phpFiles[] = $file->getPathname();
            }
        }
        return $phpFiles;
    }
    
    private function mergeFindings(array $all, array $new): array {
        foreach ($new as $key => $values) {
            $all[$key] = array_merge($all[$key], $values);
        }
        return $all;
    }
}

class WPFootprintVisitor extends NodeVisitorAbstract {
    private $findings;
    private $defaultWpOptions;

    public function __construct(array &$initialFindings) {
        // Deep copy structure
        $this->findings = [
            'options' => [],
            'transients' => [],
            'cron_jobs' => [],
            'custom_tables' => [],
            'metadata' => []
        ];

        // List of common/core WordPress options that should never be removed.
        $this->defaultWpOptions = [
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
    }

    public function leaveNode(Node $node) {
        $this->checkFunctionCalls($node);
        $this->checkDatabaseCalls($node);
    }
    
    private function checkFunctionCalls(Node $node) {
        if ($node instanceof Node\Expr\FuncCall && $node->name instanceof Node\Name) {
            $funcName = strtolower($node->name->toString());

            $firstArg = null;
            if (count($node->args) > 0 && $node->args[0] instanceof Node\Arg) {
                $val = $node->args[0]->value;
                if ($val instanceof Node\Scalar\String_) {
                    $firstArg = $val->value;
                }
            }

            if ($firstArg) {
                if (in_array($funcName, ['add_option', 'update_option'])) {
                    // Safety Check: Make sure it's not a core WordPress option
                    if (!in_array($firstArg, $this->defaultWpOptions, true)) {
                        $this->findings['options'][] = $firstArg;
                    }
                } elseif (in_array($funcName, ['set_transient'])) {
                    $this->findings['transients'][] = $firstArg;
                } elseif (in_array($funcName, ['add_metadata'])) {
                    // add_metadata signature is ($meta_type, $object_id, $meta_key, $meta_value, ...)
                    // we want the $meta_key which is the 3rd argument
                    if (count($node->args) >= 3 && $node->args[2] instanceof Node\Arg) {
                        $metaKeyVal = $node->args[2]->value;
                        if ($metaKeyVal instanceof Node\Scalar\String_) {
                            $this->findings['metadata'][] = $metaKeyVal->value;
                        }
                    }
                }
            }
            
            // wp_schedule_event usually takes timestamp, recurrence, hook. The hook is the 3rd arg.
            if ($funcName === 'wp_schedule_event') {
                if (count($node->args) >= 3 && $node->args[2] instanceof Node\Arg) {
                     $hookVal = $node->args[2]->value;
                     if ($hookVal instanceof Node\Scalar\String_) {
                         $this->findings['cron_jobs'][] = $hookVal->value;
                     }
                }
            }
        }
    }
    
    private function checkDatabaseCalls(Node $node) {
        $sqlQuery = null;

        if ($node instanceof Node\Expr\MethodCall && $node->name instanceof Node\Identifier) {
            if ($node->name->toString() === 'query' || $node->name->toString() === 'get_results' || $node->name->toString() === 'get_var') {
                // Could be $wpdb->query( ... )
                // Simplistic extraction: look for strings or interpolated strings that look like CREATE TABLE 
                if (count($node->args) > 0 && $node->args[0] instanceof Node\Arg) {
                     $sqlQuery = $this->extractStringValue($node->args[0]->value);
                }
            }
        } elseif ($node instanceof Node\Expr\FuncCall && $node->name instanceof Node\Name) {
            if (strtolower($node->name->toString()) === 'dbdelta') {
                 if (count($node->args) > 0 && $node->args[0] instanceof Node\Arg) {
                     $sqlQuery = $this->extractStringValue($node->args[0]->value);
                 }
            }
        }

        if ($sqlQuery) {
            // Regex to find table names in CREATE TABLE statements
            // Very naive, just looks for "CREATE TABLE [IF NOT EXISTS] table_name"
            if (preg_match('/CREATE\s+TABLE\s+(?:IF\s+NOT\s+EXISTS\s+)?([^\s\(]+)/i', $sqlQuery, $matches)) {
                $tableName = $matches[1];
                // Strip backticks if present
                $tableName = trim($tableName, '`\'"');
                
                // Typical WP plugins use {$wpdb->prefix}table_name, we can try to extract the base name or just keep it as parsed.
                // Keeping it as parsed is safer for dropping
                $this->findings['custom_tables'][] = $tableName;
            }
        }
    }
    
    private function extractStringValue(Node $expr) {
        if ($expr instanceof Node\Scalar\String_) {
            return $expr->value;
        } elseif ($expr instanceof Node\Scalar\InterpolatedString) {
             $str = '';
             foreach ($expr->parts as $part) {
                 if ($part instanceof Node\InterpolatedStringPart) {
                     $str .= $part->value;
                 } elseif ($part instanceof Node\Expr\PropertyFetch) {
                     if ($part->name instanceof Node\Identifier && $part->name->toString() === 'prefix') {
                         $str .= '{wpdb_prefix}'; // Placeholder for $wpdb->prefix
                     } else {
                         return null; // Too complex
                     }
                 } else {
                     return null; // Too complex to resolve statically easily
                 }
             }
             return $str;
        }
        return null;
    }

    public function getFindings(): array {
        return $this->findings;
    }
}
