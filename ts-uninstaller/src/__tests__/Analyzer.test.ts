import { PluginAnalyzer } from '../Analyzer';
import fs from 'fs-extra';
import path from 'path';
import os from 'os';

describe('PluginAnalyzer AST Extraction', () => {
    let analyzer: PluginAnalyzer;
    let tempDir: string;

    beforeEach(async () => {
        analyzer = new PluginAnalyzer();
        tempDir = await fs.mkdtemp(path.join(os.tmpdir(), 'analyzer-test-'));
    });

    afterEach(async () => {
        await fs.remove(tempDir);
    });

    const createPhpFile = async (filename: string, content: string) => {
        const filePath = path.join(tempDir, filename);
        await fs.writeFile(filePath, `<?php\n${content}`);
    };

    it('should detect bare option getters and setters', async () => {
        await createPhpFile('test1.php', `
            add_option('my_plugin_active', '1');
            update_option('my_plugin_version', '2.0');
            get_option('my_plugin_settings');
        `);

        const findings = await analyzer.analyzeDirectory(tempDir);
        expect(findings.options).toContain('my_plugin_active');
        expect(findings.options).toContain('my_plugin_version');
        expect(findings.options).toContain('my_plugin_settings');
    });

    it('should extract Settings API keys', async () => {
        await createPhpFile('test2.php', `
            register_setting('my_plugin_group', 'my_plugin_registered_key');
        `);

        const findings = await analyzer.analyzeDirectory(tempDir);
        expect(findings.options).toContain('my_plugin_registered_key');
    });

    it('should convert string concatenations to wildcards', async () => {
        await createPhpFile('test3.php', `
            update_option('my_prefix_' . $user_id, 'val');
            set_transient('cache_' . $post->ID, 'data', 3600);
            update_post_meta($post_id, 'my_meta_' . $key, 'val');
        `);

        const findings = await analyzer.analyzeDirectory(tempDir);
        expect(findings.options).toContain('my_prefix_*');
        expect(findings.transients).toContain('cache_*');
        expect(findings.metadata).toContain('my_meta_*');
    });

    it('should successfully detect uninstall.php files', async () => {
        await createPhpFile('uninstall.php', `
            if (!defined('WP_UNINSTALL_PLUGIN')) die;
        `);

        const findings = await analyzer.analyzeDirectory(tempDir);
        expect(findings.has_uninstall).toBe(true);
    });

    it('should ignore default WordPress core options', async () => {
        await createPhpFile('test4.php', `
            update_option('siteurl', 'https://example.com');
            get_option('admin_email');
        `);

        const findings = await analyzer.analyzeDirectory(tempDir);
        expect(findings.options).not.toContain('siteurl');
        expect(findings.options).not.toContain('admin_email');
    });

    it('should accurately detect cron jobs regardless of helper wrapper', async () => {
        await createPhpFile('test5.php', `
            wp_schedule_event(time(), 'daily', 'my_daily_cron');
            wp_schedule_single_event(time(), 'my_single_cron');
            wp_clear_scheduled_hook('my_cleanup_cron');
        `);

        const findings = await analyzer.analyzeDirectory(tempDir);
        expect(findings.cron_jobs).toContain('my_daily_cron');
        expect(findings.cron_jobs).toContain('my_single_cron');
        expect(findings.cron_jobs).toContain('my_cleanup_cron');
    });
});
