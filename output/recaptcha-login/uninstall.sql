-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('recaptchalogin_public_key', 'recaptchalogin_private_key', 'recaptchalogin_welcome_heading', 'recaptchalogin_avatar', 'recaptchalogin_logged_in_links', 'recaptchalogin_logout_redirect', 'recaptchalogin_heading', 'recaptchalogin_login_redirect', 'recaptchalogin_register_link', 'recaptchalogin_forgotton_link', 'recaptchalogin_color', 'recaptcha_options');

