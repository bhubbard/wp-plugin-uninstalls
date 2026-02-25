-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%version';
DELETE FROM wp_options WHERE option_name LIKE '%starsmax';
DELETE FROM wp_options WHERE option_name LIKE '%starsmin';
DELETE FROM wp_options WHERE option_name LIKE '%syntax';
DELETE FROM wp_options WHERE option_name LIKE '%size';
DELETE FROM wp_options WHERE option_name LIKE '%numericText';

