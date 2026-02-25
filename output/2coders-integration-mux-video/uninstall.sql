-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'muxvideo_options', 'muxvideo_redirect_after_activation', 'fs_snooze_period', 'update_plugins', 'update_themes', '_fs_api_connection_retry_counter', 'muxvideo_playback_restrictions');

