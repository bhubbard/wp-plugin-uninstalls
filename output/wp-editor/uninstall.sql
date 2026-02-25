-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpe_settings', 'wpe_settings_general', 'wpe_settings_theme_editor', 'wpe_settings_plugin_editor', 'wpe_settings_post_editor', 'wpe_settings_license', 'wpe_log_file_name');

