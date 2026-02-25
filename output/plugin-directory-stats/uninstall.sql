-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plugin_dir_stats_setting_opt', 'plugin_dir_stats_updated', 'plugin_dir_stats_checkver_stamp');

