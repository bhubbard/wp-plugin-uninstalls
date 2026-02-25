-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('buyin1cl_phone_mask', 'buyin1cl_button_color', 'buyin1cl_button_hover_color', 'buyin1cl_button_text', 'buyin1cl_border_radius', 'buyin1cl_border_color', 'buyin1cl_font_weight', 'buyin1cl_button_font_size', 'buyin1cl_input_font_size', 'buyin1cl_button_height', 'buyin1cl_button_font_color');

