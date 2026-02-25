-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('graylc_plugin_redirect', 'graylc_logo_url_redirect', 'graylc_logo_text', 'graylc_remember_me', 'graylc_form_width', 'graylc_login_logo', 'graylc_bg_image', 'graylc_logo_width', 'graylc_logo_height', 'graylc_input_height', 'graylc_input_border_width', 'graylc_input_border_color', 'graylc_button_bg_color', 'graylc_button_text_color');

