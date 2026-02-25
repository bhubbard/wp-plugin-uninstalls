-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('swki_options', 'swki_options_feature', 'swki_options_status', 'swki_options_vods', 'swki_options_wall', 'swki_translations', 'swki_debug_log', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'swki_notice_closed5', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

