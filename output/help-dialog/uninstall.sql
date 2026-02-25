-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'ephd_one_time_notices', 'ephd_ongoing_notices', 'classic-editor-replace', 'ephd_run_setup', 'ephd_version', 'ephd_error_log', 'ephd_global_config', 'ephd_notification_rules_config', 'ephd_show_upgrade_message', 'ephd_analytics_purge_date', '_ephd_advanced_search_debug_activated', '_ephd_plugin_activated', '_ephd_delete_all_hd_data', '_ephd_plugin_installed');

