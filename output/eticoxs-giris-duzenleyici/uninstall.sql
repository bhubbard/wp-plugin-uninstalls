-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('brs_giris_form_heading', 'brs_giris_form_captcha', 'brs_giris_form_captcha_lang', 'brs_giris_form_no_shake', 'brs_giris_form_captcha_key', 'brs_giris_form_captcha_theme', 'brs_giris_form_captcha_type', 'brs_giris_redirect_register', 'brs_giris_redirect_login', 'brs_giris_custom_css', 'brs_giris_custom_js', 'brs_giris_form_animation_in', 'brs_giris_form_animation_out', 'brs_giris_form_animation_error', 'brs_giris_logo_hide', 'brs_giris_logo_link', 'brs_giris_logo_title', 'brs_giris_custom_login_url', 'tt-logo-fonts');

