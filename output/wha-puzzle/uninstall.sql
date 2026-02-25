-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('whapz_control_panel_upload', 'whapz_option_horizontal_pieces', 'whapz_option_vertical_pieces', 'whapz_option_scaling', 'whapz_desktop_image_puzzle', 'whapz_mobile_image_puzzle', 'whapz_option_canvas_color', 'whapz_option_opacity_img', 'whapz_post_id', 'whapz_option_congratulations', '_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('whapz_control_panel_upload', 'whapz_option_horizontal_pieces', 'whapz_option_vertical_pieces', 'whapz_option_scaling', 'whapz_desktop_image_puzzle', 'whapz_mobile_image_puzzle', 'whapz_option_canvas_color', 'whapz_option_opacity_img', 'whapz_post_id', 'whapz_option_congratulations', '_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('whapz_control_panel_upload', 'whapz_option_horizontal_pieces', 'whapz_option_vertical_pieces', 'whapz_option_scaling', 'whapz_desktop_image_puzzle', 'whapz_mobile_image_puzzle', 'whapz_option_canvas_color', 'whapz_option_opacity_img', 'whapz_post_id', 'whapz_option_congratulations', '_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('whapz_control_panel_upload', 'whapz_option_horizontal_pieces', 'whapz_option_vertical_pieces', 'whapz_option_scaling', 'whapz_desktop_image_puzzle', 'whapz_mobile_image_puzzle', 'whapz_option_canvas_color', 'whapz_option_opacity_img', 'whapz_post_id', 'whapz_option_congratulations', '_wp_attached_file');

