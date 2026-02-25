-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'mass_email_needs_table_creation', 'update_plugins', 'gops_error', 'gops_notice', 'fs_snooze_period', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%table_version';
DELETE FROM wp_options WHERE option_name LIKE '%suppressions_table_version';
DELETE FROM wp_options WHERE option_name LIKE '%email_count';
DELETE FROM wp_options WHERE option_name LIKE '%rating_asked';
DELETE FROM wp_options WHERE option_name LIKE '%counters';
DELETE FROM wp_options WHERE option_name LIKE '%review_prompter_usage_count';
DELETE FROM wp_options WHERE option_name LIKE '%survey_status';
DELETE FROM wp_options WHERE option_name LIKE '%next_send_ready';
DELETE FROM wp_options WHERE option_name LIKE '%send_lock';

