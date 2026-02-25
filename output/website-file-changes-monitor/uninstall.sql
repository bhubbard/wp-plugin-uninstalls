-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wfcm_version', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%redirect_after_activation';
DELETE FROM wp_options WHERE option_name LIKE '%active_version';
DELETE FROM wp_options WHERE option_name LIKE '%last_scan_time';
DELETE FROM wp_options WHERE option_name LIKE '%scanner_running';
DELETE FROM wp_options WHERE option_name LIKE '%initial_setup_needed';
DELETE FROM wp_options WHERE option_name LIKE '%scan-hour';
DELETE FROM wp_options WHERE option_name LIKE '%scan-hour-am';
DELETE FROM wp_options WHERE option_name LIKE '%scan-day';
DELETE FROM wp_options WHERE option_name LIKE '%event_notification_dismissed';
DELETE FROM wp_options WHERE option_name LIKE '%update_notice_needed';
DELETE FROM wp_options WHERE option_name LIKE '%show_update_notice';
DELETE FROM wp_options WHERE option_name LIKE '%monitor_status';
DELETE FROM wp_options WHERE option_name LIKE '%db_setup_complete';
DELETE FROM wp_options WHERE option_name LIKE '%active_scan_id';
DELETE FROM wp_options WHERE option_name LIKE '%delete-data-enabled';
DELETE FROM wp_options WHERE option_name LIKE '%permissions_column_created';
DELETE FROM wp_options WHERE option_name LIKE '%plugins_and_themes_history';
DELETE FROM wp_options WHERE option_name LIKE '%plugins_and_themes_recent_updates';
DELETE FROM wp_options WHERE option_name LIKE '%max_scan_time';
DELETE FROM wp_options WHERE option_name LIKE '%dir_runner_started';
DELETE FROM wp_options WHERE option_name LIKE '%next_scan_time';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

