-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('google_recaptcha_site_key', 'google_recaptcha_secret_key', 'google_recaptcha_login_check_disable');

