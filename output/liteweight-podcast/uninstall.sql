-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('csf_demo_mode', 'nothdddding', 'h5vp_option', 'pdp_option');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('h5vp_playlist_options', 'pdp', 'h5vp_playlist', 'isGutenberg', '_pdp_re_', '_pdp_setting_button', '_pdp_download_button', '_pdp_player_theme', '_pdp_disable_image', '_pdp_audio_repeat', '_pdp_social_label', '_pdp_social_count', '_pdp_disable_social');
DELETE FROM wp_usermeta WHERE meta_key IN ('h5vp_playlist_options', 'pdp', 'h5vp_playlist', 'isGutenberg', '_pdp_re_', '_pdp_setting_button', '_pdp_download_button', '_pdp_player_theme', '_pdp_disable_image', '_pdp_audio_repeat', '_pdp_social_label', '_pdp_social_count', '_pdp_disable_social');
DELETE FROM wp_termmeta WHERE meta_key IN ('h5vp_playlist_options', 'pdp', 'h5vp_playlist', 'isGutenberg', '_pdp_re_', '_pdp_setting_button', '_pdp_download_button', '_pdp_player_theme', '_pdp_disable_image', '_pdp_audio_repeat', '_pdp_social_label', '_pdp_social_count', '_pdp_disable_social');
DELETE FROM wp_commentmeta WHERE meta_key IN ('h5vp_playlist_options', 'pdp', 'h5vp_playlist', 'isGutenberg', '_pdp_re_', '_pdp_setting_button', '_pdp_download_button', '_pdp_player_theme', '_pdp_disable_image', '_pdp_audio_repeat', '_pdp_social_label', '_pdp_social_count', '_pdp_disable_social');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';

