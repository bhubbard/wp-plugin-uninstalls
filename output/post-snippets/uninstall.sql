-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'post_snippets', 'ps_update_msg', 'ps_hide_admin_notice_newsletter', 'ps_hide_admin_notice_get_started', 'psp_db_version', 'post_snippets_options', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

