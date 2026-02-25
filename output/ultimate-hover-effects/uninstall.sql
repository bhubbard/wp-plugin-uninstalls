-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'uhe_extra_class', 'uhe_heading_font_size', 'uhe_heading_color', 'uhe_desc_font_size', 'uhe_custom_image_size', 'uhe_image_width', 'uhe_column_number', 'options');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'uhe_extra_class', 'uhe_heading_font_size', 'uhe_heading_color', 'uhe_desc_font_size', 'uhe_custom_image_size', 'uhe_image_width', 'uhe_column_number', 'options');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'uhe_extra_class', 'uhe_heading_font_size', 'uhe_heading_color', 'uhe_desc_font_size', 'uhe_custom_image_size', 'uhe_image_width', 'uhe_column_number', 'options');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'uhe_extra_class', 'uhe_heading_font_size', 'uhe_heading_color', 'uhe_desc_font_size', 'uhe_custom_image_size', 'uhe_image_width', 'uhe_column_number', 'options');

