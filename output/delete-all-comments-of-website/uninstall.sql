-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nav_disable_comments_type', 'nav_enable_role_exclusions', 'nav_show_avatars', 'nav_disable_api_comments', 'nav_disable_type', 'nav_disable_comments_global', 'nav_excluded_roles', 'nav_disable_avatar', 'nav_disable_xmlrpc', 'nav_disable_rest_api', 'nav_deleted_comments_count', 'nav_auto_delete_spam', 'nav_last_spam_cleanup', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'wp_count_comments', 'nav_comments_count', 'nav_remaining_comments', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'nav_disable_comments_%';
DELETE FROM wp_options WHERE option_name LIKE 'nav_exclude_role_%';

