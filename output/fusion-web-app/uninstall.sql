-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('title', 'description', 'screen', 'requires_id', 'body');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('app_category_image', '_thumbnail_id', 'app_audio_url', 'app_video_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('app_category_image', '_thumbnail_id', 'app_audio_url', 'app_video_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('app_category_image', '_thumbnail_id', 'app_audio_url', 'app_video_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('app_category_image', '_thumbnail_id', 'app_audio_url', 'app_video_url');

