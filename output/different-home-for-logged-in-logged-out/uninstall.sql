-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('logged_in_page_source', 'page_for_logged_in', 'url_for_logged_in', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'diff_home_all_post_types', 'fs_snooze_period', 'update_plugins', 'update_themes', '_fs_api_connection_retry_counter');

