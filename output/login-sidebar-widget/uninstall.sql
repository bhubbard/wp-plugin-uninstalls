-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lap_invalid_username', 'lap_invalid_email', 'lap_invalid_password', 'forgot_password_link_mail_subject', 'forgot_password_link_mail_body', 'new_password_mail_subject', 'new_password_mail_body', 'login_ap_rem', 'login_ap_forgot_pass_link', 'login_ap_forgot_pass_page_url', 'login_ap_register_link', 'login_ap_register_page_url', 'redirect_page', 'redirect_page_url', 'nonce_check_on_login', 'logout_redirect_page', 'link_in_username', 'custom_style_ap', 'captcha_on_admin_login', 'captcha_on_user_login', 'lsw_google_recaptcha_public_key', 'lsw_google_recaptcha_private_key', 'captcha_type_in_lsw', 'login_sidebar_widget_from_email');
DELETE FROM wp_options WHERE option_name LIKE 'aiowps_captcha_string_info_%';

