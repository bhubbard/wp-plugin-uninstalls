-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('swyi_options', 'swyi_options_wall', 'swyi_options_showcase', 'swyi_options_feature', 'swyi_options_player', 'swyi_options_status', 'swyi_translations', 'swyi_debug_log', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'swyi_notice_closed5', 'swyi_video_cache', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

