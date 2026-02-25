-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acf-image-aspect-ratio-crop-settings', 'acf-image-aspect-ratio-crop-version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('acf_image_aspect_ratio_crop_parent_post_id', 'acf_image_aspect_ratio_crop_temp_post_id', 'acf_image_aspect_ratio_crop_timestamp', 'acf_image_aspect_ratio_crop_coordinates', 'acf_image_aspect_ratio_crop', 'acf_image_aspect_ratio_crop_original_image_id', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('acf_image_aspect_ratio_crop_parent_post_id', 'acf_image_aspect_ratio_crop_temp_post_id', 'acf_image_aspect_ratio_crop_timestamp', 'acf_image_aspect_ratio_crop_coordinates', 'acf_image_aspect_ratio_crop', 'acf_image_aspect_ratio_crop_original_image_id', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('acf_image_aspect_ratio_crop_parent_post_id', 'acf_image_aspect_ratio_crop_temp_post_id', 'acf_image_aspect_ratio_crop_timestamp', 'acf_image_aspect_ratio_crop_coordinates', 'acf_image_aspect_ratio_crop', 'acf_image_aspect_ratio_crop_original_image_id', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('acf_image_aspect_ratio_crop_parent_post_id', 'acf_image_aspect_ratio_crop_temp_post_id', 'acf_image_aspect_ratio_crop_timestamp', 'acf_image_aspect_ratio_crop_coordinates', 'acf_image_aspect_ratio_crop', 'acf_image_aspect_ratio_crop_original_image_id', '_wp_attachment_image_alt');

