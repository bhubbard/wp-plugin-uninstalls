-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_jquery_manager_plugin_jquery_settings', 'wp_jquery_manager_plugin_jquery_migrate_settings', 'external_updates-wp_jquery_manager_plugin');

