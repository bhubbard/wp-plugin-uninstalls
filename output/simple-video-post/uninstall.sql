-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('svp_version', 'svp_player_settings', 'svp_brand_settings', 'rewrite_rules', 'svp_general_settings', 'svp_page_settings');
DELETE FROM wp_options WHERE option_name LIKE 'svp_rand_seed_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('track', 'is_video_post', 'type', 'mp4', 'mp4_id', 'has_webm', 'webm', 'webm_id', 'has_ogv', 'ogv', 'ogv_id', 'quality_level', 'sources', 'youtube', 'vimeo', 'dailymotion', 'facebook', 'embedcode', 'image', 'image_id', 'duration', 'views');
DELETE FROM wp_usermeta WHERE meta_key IN ('track', 'is_video_post', 'type', 'mp4', 'mp4_id', 'has_webm', 'webm', 'webm_id', 'has_ogv', 'ogv', 'ogv_id', 'quality_level', 'sources', 'youtube', 'vimeo', 'dailymotion', 'facebook', 'embedcode', 'image', 'image_id', 'duration', 'views');
DELETE FROM wp_termmeta WHERE meta_key IN ('track', 'is_video_post', 'type', 'mp4', 'mp4_id', 'has_webm', 'webm', 'webm_id', 'has_ogv', 'ogv', 'ogv_id', 'quality_level', 'sources', 'youtube', 'vimeo', 'dailymotion', 'facebook', 'embedcode', 'image', 'image_id', 'duration', 'views');
DELETE FROM wp_commentmeta WHERE meta_key IN ('track', 'is_video_post', 'type', 'mp4', 'mp4_id', 'has_webm', 'webm', 'webm_id', 'has_ogv', 'ogv', 'ogv_id', 'quality_level', 'sources', 'youtube', 'vimeo', 'dailymotion', 'facebook', 'embedcode', 'image', 'image_id', 'duration', 'views');

