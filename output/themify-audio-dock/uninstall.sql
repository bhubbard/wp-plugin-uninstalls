-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('themify_audio_dock_playlist', 'themify_audio_dock_collapsed', 'themify_audio_dock_bar_color', 'themify_audio_dock_track_color', 'themify_audio_dock_autoplay');

