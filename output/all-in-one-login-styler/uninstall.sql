-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aiols_enable_customization', 'aiols_login_logo', 'aiols_login_bg_img', 'aiols_background_color', 'aiols_button_color', 'aiols_form_color', 'aiols_fields_border_color', 'aiols_form_radius', 'aiols_links_color', 'aiols_form_width');

