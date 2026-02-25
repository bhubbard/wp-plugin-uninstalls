-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%s1-heading';
DELETE FROM wp_options WHERE option_name LIKE '%s1-body';
DELETE FROM wp_options WHERE option_name LIKE '%s1-alt';
DELETE FROM wp_options WHERE option_name LIKE '%s1-mono';
DELETE FROM wp_options WHERE option_name LIKE '%font_display';
DELETE FROM wp_options WHERE option_name LIKE '%fstack-heading';
DELETE FROM wp_options WHERE option_name LIKE '%fstack-body';
DELETE FROM wp_options WHERE option_name LIKE '%fstack-alt';
DELETE FROM wp_options WHERE option_name LIKE '%fstack-mono';
DELETE FROM wp_options WHERE option_name LIKE '%default_css';
DELETE FROM wp_options WHERE option_name LIKE '%stage_1';
DELETE FROM wp_options WHERE option_name LIKE '%stage_2';
DELETE FROM wp_options WHERE option_name LIKE '%activation-date';
DELETE FROM wp_options WHERE option_name LIKE '%version';
DELETE FROM wp_options WHERE option_name LIKE '%uninstall';

