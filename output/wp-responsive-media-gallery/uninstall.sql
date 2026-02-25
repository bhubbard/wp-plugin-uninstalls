-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gallery_sortorder', 'gallery_status', 'gallery_border_colour', 'gallery_hover_colour', 'gallery_img_width', 'gallery_img_height', 'gallery_num_cols', 'gallery_image_details', 'gallery_template_layout', 'gallery_load_more', 'gallery_load_more_item');
DELETE FROM wp_usermeta WHERE meta_key IN ('gallery_sortorder', 'gallery_status', 'gallery_border_colour', 'gallery_hover_colour', 'gallery_img_width', 'gallery_img_height', 'gallery_num_cols', 'gallery_image_details', 'gallery_template_layout', 'gallery_load_more', 'gallery_load_more_item');
DELETE FROM wp_termmeta WHERE meta_key IN ('gallery_sortorder', 'gallery_status', 'gallery_border_colour', 'gallery_hover_colour', 'gallery_img_width', 'gallery_img_height', 'gallery_num_cols', 'gallery_image_details', 'gallery_template_layout', 'gallery_load_more', 'gallery_load_more_item');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gallery_sortorder', 'gallery_status', 'gallery_border_colour', 'gallery_hover_colour', 'gallery_img_width', 'gallery_img_height', 'gallery_num_cols', 'gallery_image_details', 'gallery_template_layout', 'gallery_load_more', 'gallery_load_more_item');

