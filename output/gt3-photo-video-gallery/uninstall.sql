-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gt3pg_disable_notice_pro_required_update', 'gt3_rate_date', 'gt3pg_photo_gallery', 'gt3pg_disable_rate_notice', 'gt3pg_disable_50_off', 'gt3_watermark_processing', 'update_plugins', '_gt3pg_page_welcome_redirect');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE 'gt3pg_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gt3_video_url', 'gt3_external_link_url', '_gt3pg_shortcode_count', '_wp_attachment_image_alt', 'lazy-placeholder', '_watermark_original', '_watermark_id', '_cpt_gt3_gallery_images_count', '_cpt_gt3_gallery_images', '_cpt_gt3_gallery_type', '_cpt_gt3_gallery_attributes');
DELETE FROM wp_usermeta WHERE meta_key IN ('gt3_video_url', 'gt3_external_link_url', '_gt3pg_shortcode_count', '_wp_attachment_image_alt', 'lazy-placeholder', '_watermark_original', '_watermark_id', '_cpt_gt3_gallery_images_count', '_cpt_gt3_gallery_images', '_cpt_gt3_gallery_type', '_cpt_gt3_gallery_attributes');
DELETE FROM wp_termmeta WHERE meta_key IN ('gt3_video_url', 'gt3_external_link_url', '_gt3pg_shortcode_count', '_wp_attachment_image_alt', 'lazy-placeholder', '_watermark_original', '_watermark_id', '_cpt_gt3_gallery_images_count', '_cpt_gt3_gallery_images', '_cpt_gt3_gallery_type', '_cpt_gt3_gallery_attributes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gt3_video_url', 'gt3_external_link_url', '_gt3pg_shortcode_count', '_wp_attachment_image_alt', 'lazy-placeholder', '_watermark_original', '_watermark_id', '_cpt_gt3_gallery_images_count', '_cpt_gt3_gallery_images', '_cpt_gt3_gallery_type', '_cpt_gt3_gallery_attributes');

