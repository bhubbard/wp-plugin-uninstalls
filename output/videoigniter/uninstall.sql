-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('videoigniter_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_videoigniter_tracks', '_videoigniter_playlist_layout', '_videoigniter_volume', '_videoigniter_show_fullscreen_toggle', '_videoigniter_show_playback_speed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_videoigniter_tracks', '_videoigniter_playlist_layout', '_videoigniter_volume', '_videoigniter_show_fullscreen_toggle', '_videoigniter_show_playback_speed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_videoigniter_tracks', '_videoigniter_playlist_layout', '_videoigniter_volume', '_videoigniter_show_fullscreen_toggle', '_videoigniter_show_playback_speed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_videoigniter_tracks', '_videoigniter_playlist_layout', '_videoigniter_volume', '_videoigniter_show_fullscreen_toggle', '_videoigniter_show_playback_speed');

