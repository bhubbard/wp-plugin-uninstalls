-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seos_change_site_title_color', 'seos_change_color_header_background', 'seos_change_color_navigation_background', 'seos_change_color_body_background', 'seos_change_color_main_background', 'seos_change_color_sidebar_background', 'seos_change_color_footer_background', 'seos_change_color_label_background', 'seos_change_color_form_background', 'seos_change_color_input_background', 'seos_change_color_h_color', 'seos_change_color_strong_color');

