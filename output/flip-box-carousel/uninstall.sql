-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('flipnumber', 'flip_height', 'autoplay', 'navigation', 'pagination', 'repeate_loop', 'stop_hover', 'flip_speed', 'flip_bg_color', 'flip_border_color', 'flip_border_width', 'flip_border_radius', 'flip_title_color', 'gobal_color', 'flip_color', 'flip_txt_color', 'default_post_edit_rows');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fcb_frontside_image', '_fcb_Backside_image', '_fcb_frontside_heading', '_fcb_frontside_content', '_fcb_backside_heading', '_fcb_backside_content', '_fcb_backside_button_txt', '_fcb_backside_button_bg_color', '_fcb_backside_button_text_color', '_fcb_frontside_image_id', '_fcb_Backside_image_id', '_fcb_backside_button_link', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fcb_frontside_image', '_fcb_Backside_image', '_fcb_frontside_heading', '_fcb_frontside_content', '_fcb_backside_heading', '_fcb_backside_content', '_fcb_backside_button_txt', '_fcb_backside_button_bg_color', '_fcb_backside_button_text_color', '_fcb_frontside_image_id', '_fcb_Backside_image_id', '_fcb_backside_button_link', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fcb_frontside_image', '_fcb_Backside_image', '_fcb_frontside_heading', '_fcb_frontside_content', '_fcb_backside_heading', '_fcb_backside_content', '_fcb_backside_button_txt', '_fcb_backside_button_bg_color', '_fcb_backside_button_text_color', '_fcb_frontside_image_id', '_fcb_Backside_image_id', '_fcb_backside_button_link', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fcb_frontside_image', '_fcb_Backside_image', '_fcb_frontside_heading', '_fcb_frontside_content', '_fcb_backside_heading', '_fcb_backside_content', '_fcb_backside_button_txt', '_fcb_backside_button_bg_color', '_fcb_backside_button_text_color', '_fcb_frontside_image_id', '_fcb_Backside_image_id', '_fcb_backside_button_link', '_wp_page_template');

