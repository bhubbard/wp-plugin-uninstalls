-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fv_wordpress_flowplayer_deferred_notices', 'fv_wordpress_flowplayer_persistent_notices', 'fvwpflowplayer', 'fv_flowplayer_extension_install', 'fvwpflowplayer_core_ver', 'fv_wordpress_flowplayer_expired_license_update_notice', 'fvwpflowplayer_conversion', 'fv-player-pro-release', 'fv_flowplayer_checker_queue', 'fv_player_email_lists', 'fv_player_mailchimp_lists', 'fv_player_mailchimp_time', 'rewrite_rules', 'fv_player_popups', '_transient_timeout_fv_flowplayer_license', '_transient_timeout_fv-player-pro_license', '_transient_timeout_fv-player-vast_license', '_transient_timeout_fv-player-pay-per-view_license', 'active_sitewide_plugins', 'fv_player_pro_youtube_error', 'fv_preview_hls', 'fv_flowplayer_ppv', 'fv_flowplayer_vast', 'update_plugins', 'fv_flowplayer_license', 'plugin_slugs', 'fv_player_s3_browser_cf', 'available_translations', 'fv-player-pro_license', 'fv-player-vast_license', 'fv-player-pay-per-view_license');
DELETE FROM wp_options WHERE option_name LIKE '%_deferred_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_extension_install';
DELETE FROM wp_options WHERE option_name LIKE '%-prev-ver';
DELETE FROM wp_options WHERE option_name LIKE '%_ver';
DELETE FROM wp_options WHERE option_name LIKE '%_license';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fv_player_video_id', '_fv_player_featured_image_players', '_fv_player_featured_image_splash_urls', '_fv_player_featured_image_set', '_fv_player_splash_image_url', 'fv_player_mobile_native_fullscreen', 'fv_player_mobile_force_fullscreen', '_wp_attachment_metadata', 'jwplayermodule_playlist_items', '_wp_attached_file', 'jwplayermodule_thumbnail', '_fv_flowplayer', 'lesson_use_fvplayer_video', 'lesson_fv_player', '_aioseop_description', 'fv_player_original_splash_url', '_yoast_wpseo_metadesc', '_genesis_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('fv_player_video_id', '_fv_player_featured_image_players', '_fv_player_featured_image_splash_urls', '_fv_player_featured_image_set', '_fv_player_splash_image_url', 'fv_player_mobile_native_fullscreen', 'fv_player_mobile_force_fullscreen', '_wp_attachment_metadata', 'jwplayermodule_playlist_items', '_wp_attached_file', 'jwplayermodule_thumbnail', '_fv_flowplayer', 'lesson_use_fvplayer_video', 'lesson_fv_player', '_aioseop_description', 'fv_player_original_splash_url', '_yoast_wpseo_metadesc', '_genesis_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('fv_player_video_id', '_fv_player_featured_image_players', '_fv_player_featured_image_splash_urls', '_fv_player_featured_image_set', '_fv_player_splash_image_url', 'fv_player_mobile_native_fullscreen', 'fv_player_mobile_force_fullscreen', '_wp_attachment_metadata', 'jwplayermodule_playlist_items', '_wp_attached_file', 'jwplayermodule_thumbnail', '_fv_flowplayer', 'lesson_use_fvplayer_video', 'lesson_fv_player', '_aioseop_description', 'fv_player_original_splash_url', '_yoast_wpseo_metadesc', '_genesis_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fv_player_video_id', '_fv_player_featured_image_players', '_fv_player_featured_image_splash_urls', '_fv_player_featured_image_set', '_fv_player_splash_image_url', 'fv_player_mobile_native_fullscreen', 'fv_player_mobile_force_fullscreen', '_wp_attachment_metadata', 'jwplayermodule_playlist_items', '_wp_attached_file', 'jwplayermodule_thumbnail', '_fv_flowplayer', 'lesson_use_fvplayer_video', 'lesson_fv_player', '_aioseop_description', 'fv_player_original_splash_url', '_yoast_wpseo_metadesc', '_genesis_description');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_failed';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_failed';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_failed';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_failed';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'fv_wp_flowplayer_position_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'fv_wp_flowplayer_position_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'fv_wp_flowplayer_position_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'fv_wp_flowplayer_position_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'fv_wp_flowplayer_top_position_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'fv_wp_flowplayer_top_position_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'fv_wp_flowplayer_top_position_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'fv_wp_flowplayer_top_position_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'fv_wp_flowplayer_saw_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'fv_wp_flowplayer_saw_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'fv_wp_flowplayer_saw_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'fv_wp_flowplayer_saw_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'fv_wp_flowplayer_player_playlist_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'fv_wp_flowplayer_player_playlist_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'fv_wp_flowplayer_player_playlist_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'fv_wp_flowplayer_player_playlist_%';

