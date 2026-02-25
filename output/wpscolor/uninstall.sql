-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsc_color_input_one_text', 'wpsc_color_input_one_url', 'wpsc_color_input_one_icon', 'wpsc_color_input_two_text', 'wpsc_color_input_two_url', 'wpsc_color_input_two_icon', 'wpsc_color_input_three_text', 'wpsc_color_input_three_url', 'wpsc_color_input_three_icon', 'wpsc_color_input_four_text', 'wpsc_color_input_four_url', 'wpsc_color_input_four_icon', 'wpsc_color_hide_frontend_color_switcher', 'wpsc_color_activate_first_color', 'wpsc_color_colors', 'wpsc_color_bg_custom_css', 'wpsc_color_custom_css', 'wpsc_color_custom_css_admin');

