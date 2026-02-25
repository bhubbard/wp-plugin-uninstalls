-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wps_presentation_input_one_text', 'wps_presentation_input_one_url', 'wps_presentation_input_two_text', 'wps_presentation_input_two_url', 'wps_presentation_input_three_text', 'wps_presentation_input_three_url', 'wps_presentation_input_four_text', 'wps_presentation_input_four_url', 'wps_presentation_hide_frontend_color_switcher', 'wps_presentation_colors', 'wps_presentation_bg_custom_css', 'wps_presentation_custom_css', 'wps_presentation_live_site_link', 'wps_presentation_support_link', 'wps_presentation_buy_now_link');

