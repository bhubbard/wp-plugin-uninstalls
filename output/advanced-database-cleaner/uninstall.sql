-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'adbc_plugin_automation', 'aDBc_settings', 'aDBc_clean_schedule', 'aDBc_optimize_schedule', 'aDBc_security_folder_code', 'adbc_plugin_settings', 'adbc_plugin_tables_to_repair');

