-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('csf_demo_mode', 'h5ap_settings', 'h5ap-notice-import', 'bpllch5ap', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('h5vp_playlist_options', '_h5ap_plyr', '_ahp_quick-audio-file', '_h5applaylist');
DELETE FROM wp_usermeta WHERE meta_key IN ('h5vp_playlist_options', '_h5ap_plyr', '_ahp_quick-audio-file', '_h5applaylist');
DELETE FROM wp_termmeta WHERE meta_key IN ('h5vp_playlist_options', '_h5ap_plyr', '_ahp_quick-audio-file', '_h5applaylist');
DELETE FROM wp_commentmeta WHERE meta_key IN ('h5vp_playlist_options', '_h5ap_plyr', '_ahp_quick-audio-file', '_h5applaylist');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';

