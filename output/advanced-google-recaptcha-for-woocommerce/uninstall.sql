-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_recaptcha_version', 'wc_recaptcha_language', 'wc_recaptcha_theme', 'wc_recaptcha_size', 'wc_enable_login_recaptcha', 'wc_enable_register_recaptcha', 'wc_enable_password_reset_recaptcha', 'wc_enable_checkout_recaptcha');
DELETE FROM wp_options WHERE option_name LIKE 'wc_recaptcha_site_key_%';
DELETE FROM wp_options WHERE option_name LIKE 'wc_recaptcha_secret_key_%';

