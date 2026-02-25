-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('debugm_log_file_path', 'debugm_js_log_file_path', 'debugm_js_error_logging', 'debugm_log_status', 'debugm_autorefresh', 'debugm_modify_script_debug', 'debugm_process_non_utc_timezones', 'debugm_log_status_changed', 'debugm_wp_config_backup', 'debugm_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'debugm_%';

