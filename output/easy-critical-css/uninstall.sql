-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easy_cc_activation', 'easy_cc_db_version', 'fs_accounts', 'easy_cc_version', 'easy_cc_critical_css_mode', 'perfmatters_options', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'easy_cc_is_local_site', 'easy_cc_is_rest_api_reachable', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'easy_cc_%';

