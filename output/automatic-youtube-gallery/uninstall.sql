-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ayg_version', 'ayg_gallery_settings', 'ayg_strings_settings', 'ayg_player_settings', 'ayg_livestream_settings', 'ayg_privacy_settings', 'ayg_general_settings', 'ayg_transient_keys', 'ayg_seo_settings', 'ayg_gallery_page_ids', 'ayg_channel_ids', 'ayg_playlist_ids', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

