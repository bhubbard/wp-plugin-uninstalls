import { PluginAnalyzer } from './src/Analyzer';
import fs from 'fs-extra';
async function run() {
    await fs.ensureDir('test-plugin');
    await fs.writeFile('test-plugin/test.php', `<?php
    get_option('my_plugin_settings');
    register_setting('my_group', 'my_registered_option');
    update_option('my_prefix_' . $some_var, 'val');
    set_transient('cache_' . $id, 'data', 3600);
    wp_schedule_single_event(time(), 'my_single_event');
    wp_schedule_event(time(), 'daily', 'my_recurring_event');
    add_metadata('post', 1, 'my_post_meta', 'val');
    update_post_meta(1, 'my_post_meta2_' . $suffix, 'val');
    `);
    const analyzer = new PluginAnalyzer();
    const findings = await analyzer.analyzeDirectory('test-plugin');
    console.log(JSON.stringify(findings, null, 2));
    await fs.remove('test-plugin');
}
run();
