-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_product_thumbnail_slider_bullet_nav_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%_product_thumbnail_slider_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%_product_variation_slider_enabled';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_attachment_ids';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_attachment_ids';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_attachment_ids';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_attachment_ids';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_video_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_video_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_video_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_video_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_video_source';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_video_source';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_video_source';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_video_source';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_video_display';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_video_display';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_video_display';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_video_display';

