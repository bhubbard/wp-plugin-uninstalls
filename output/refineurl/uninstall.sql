-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('saprfurl_hide_login_page', 'saprfurl_hide_redirect_page', 'saprfurl_custom_redirect', 'saprfurl_internal_link', 'saprfurl_external_link', 'saprfurl_internal_follow', 'saprfurl_user_redirect_url_after_logout', 'saprfurl_user_redirect_url_after_login', 'saprfurl_user_redirect_url_after_registration', 'saprfurl_external_follow', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

