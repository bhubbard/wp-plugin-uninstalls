-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fliz_settings', 'fliz_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fliz_auto_generate', '_fliz_video_id', '_fliz_video_status', '_fliz_video_url', '_fliz_video_format', '_fliz_video_category', '_product_image_gallery');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fliz_auto_generate', '_fliz_video_id', '_fliz_video_status', '_fliz_video_url', '_fliz_video_format', '_fliz_video_category', '_product_image_gallery');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fliz_auto_generate', '_fliz_video_id', '_fliz_video_status', '_fliz_video_url', '_fliz_video_format', '_fliz_video_category', '_product_image_gallery');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fliz_auto_generate', '_fliz_video_id', '_fliz_video_status', '_fliz_video_url', '_fliz_video_format', '_fliz_video_category', '_product_image_gallery');

