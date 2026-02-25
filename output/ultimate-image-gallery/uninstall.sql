-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_default';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('uig_gallery_type', 'uig_gallery_items', 'uig_display_image_title', 'uig_display_image_description', 'uig_masonry_layout', 'uig_gallery_column', 'uig_gallery_item_space', 'uig_border_radius', 'uig_filter_button_bg_color', 'uig_filter_button_text_color', 'uig_filter_button_active_bg_color', 'uig_filter_button_active_text_color');
DELETE FROM wp_usermeta WHERE meta_key IN ('uig_gallery_type', 'uig_gallery_items', 'uig_display_image_title', 'uig_display_image_description', 'uig_masonry_layout', 'uig_gallery_column', 'uig_gallery_item_space', 'uig_border_radius', 'uig_filter_button_bg_color', 'uig_filter_button_text_color', 'uig_filter_button_active_bg_color', 'uig_filter_button_active_text_color');
DELETE FROM wp_termmeta WHERE meta_key IN ('uig_gallery_type', 'uig_gallery_items', 'uig_display_image_title', 'uig_display_image_description', 'uig_masonry_layout', 'uig_gallery_column', 'uig_gallery_item_space', 'uig_border_radius', 'uig_filter_button_bg_color', 'uig_filter_button_text_color', 'uig_filter_button_active_bg_color', 'uig_filter_button_active_text_color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('uig_gallery_type', 'uig_gallery_items', 'uig_display_image_title', 'uig_display_image_description', 'uig_masonry_layout', 'uig_gallery_column', 'uig_gallery_item_space', 'uig_border_radius', 'uig_filter_button_bg_color', 'uig_filter_button_text_color', 'uig_filter_button_active_bg_color', 'uig_filter_button_active_text_color');

