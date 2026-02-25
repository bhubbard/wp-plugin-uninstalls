-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_enable_guest_checkout', 'woocommerce_enable_signup_and_login_from_checkout', 'woocommerce_registration_generate_username', 'woocommerce_registration_generate_password', 'woocommerce_currency', 'sezzle_api_error');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

