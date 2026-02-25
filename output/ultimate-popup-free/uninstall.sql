-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'enable_cross_button', 'ppm_popup_title', 'ppm_popup_desc', 'ppm_popup_timeunit', 'ppm_popup_timevalue', 'ppm_popup_position', 'ppm_popup_width', 'ppm_popup_border_width', 'ppm_popup_theme_color', 'popup_show_on', 'popup_enable_cookie', 'when_popup_load', 'ppm_popup_left_content', 'ppm_form_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'enable_cross_button', 'ppm_popup_title', 'ppm_popup_desc', 'ppm_popup_timeunit', 'ppm_popup_timevalue', 'ppm_popup_position', 'ppm_popup_width', 'ppm_popup_border_width', 'ppm_popup_theme_color', 'popup_show_on', 'popup_enable_cookie', 'when_popup_load', 'ppm_popup_left_content', 'ppm_form_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'enable_cross_button', 'ppm_popup_title', 'ppm_popup_desc', 'ppm_popup_timeunit', 'ppm_popup_timevalue', 'ppm_popup_position', 'ppm_popup_width', 'ppm_popup_border_width', 'ppm_popup_theme_color', 'popup_show_on', 'popup_enable_cookie', 'when_popup_load', 'ppm_popup_left_content', 'ppm_form_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'enable_cross_button', 'ppm_popup_title', 'ppm_popup_desc', 'ppm_popup_timeunit', 'ppm_popup_timevalue', 'ppm_popup_position', 'ppm_popup_width', 'ppm_popup_border_width', 'ppm_popup_theme_color', 'popup_show_on', 'popup_enable_cookie', 'when_popup_load', 'ppm_popup_left_content', 'ppm_form_code');

