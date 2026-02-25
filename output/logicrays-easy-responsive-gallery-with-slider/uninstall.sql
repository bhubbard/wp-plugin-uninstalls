-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lergs_image_label', 'lergs_hover_animation', 'lergs_layout_type', 'lergs_thumbnail_layout', 'lergs_hover_color', 'lergs_hover_text_color', 'lergs_gallry_custom_css', 'lergs_slider_play');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lergs_all_photos_details', 'lergs_total_images_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('lergs_all_photos_details', 'lergs_total_images_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('lergs_all_photos_details', 'lergs_total_images_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lergs_all_photos_details', 'lergs_total_images_count');

