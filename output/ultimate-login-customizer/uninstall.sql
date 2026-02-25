-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ulogcspl_login_style_template', 'ulogcspl_login_form_border_radius', 'ulogcspl_login_button_border_radius', 'ulogcspl_login_background_color', 'ulogcspl_login_form_background_color', 'ulogcspl_login_button_color', 'ulogcspl_login_button_text_color', 'ulogcspl_login_form_transparency', 'ulogcspl_login_background_image', 'ulogcspl_login_custom_logo', 'ulogcspl_login_logo_width', 'ulogcspl_login_logo_height', 'ulogcspl_login_background_blur', 'ulogcspl_recaptcha_site_key', 'ulogcspl_recaptcha_secret_key', 'ulogcspl_recaptcha_theme', 'ulogcspl_enable_recaptcha', 'ulogcspl_captcha_type');

