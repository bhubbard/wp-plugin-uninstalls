-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hmbkp_enable_support', 'hmbkp_wp_cron_test_failed', 'hmbkp_hide_info_notice', 'hmbkp_hide_rate_notice', 'hmbkp_notices', 'hmbkp_plugin_version', 'cron', 'wpr_api_key', 'bkpwp_max_backups', 'bkpwppath', 'hmbkp_path', 'hmbkp_files_only', 'hmbkp_database_only', 'hmbkp_schedule_frequency', 'hmbkp_disable_automatic_backup', 'hmbkp_max_backups', 'hmbkp_excludes', 'hmbkp_email_address', 'hmbkp_default_path', 'hmbkp_root_size', 'hmbkp_wp_cron_test_beacon', 'hmbkp_schedules', 'hmbkp_database_size', 'hmbkp_directory_filesizes_running', 'hmbkp_plugin_data', 'hmbkp_directory_filesizes', 'hmbkp_settings_errors');
DELETE FROM wp_options WHERE option_name LIKE 'hmbkp_schedule_%';
DELETE FROM wp_options WHERE option_name LIKE 'hm_backdrop-%';
DELETE FROM wp_options WHERE option_name LIKE 'bwp_%';

