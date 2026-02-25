-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bisteinoff_plugin_contact_data', 'bisteinoff_plugin_contact_shortcodes_migrated', 'bisteinoff_plugin_contact_shortcode_migration_completed', 'bisteinoff_shortcode_check_results', 'bisteinoff_shortcode_migration_results');

