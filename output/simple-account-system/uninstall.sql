-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simple_account_system_recaptcha', 'simple_account_system_recaptcha_site_key', 'simple_account_system_recaptcha_secret_key', 'simple_account_system_logout_links');

