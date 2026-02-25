-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('revolut_pay_synchronous_webhook_domain_live_signing_key', 'revolut_pay_synchronous_webhook_domain_sandbox_signing_key', 'sandbox_revolut_webhook_domain_signing_secret', 'live_revolut_webhook_domain_signing_secret', 'WC_GATEWAY_REVOLUT_VERSION', 'woocommerce_revolut_cc_settings', 'woocommerce_revolut_pay_settings', 'woocommerce_revolut_payment_request_settings', 'woocommerce_revolut_pay_by_bank_settings', 'woocommerce_enable_guest_checkout', 'woocommerce_enable_signup_and_login_from_checkout', 'woocommerce_registration_generate_username', 'woocommerce_registration_generate_password');
DELETE FROM wp_options WHERE option_name LIKE '%_revolut_webhook_domain';
DELETE FROM wp_options WHERE option_name LIKE '%_revolut_webhook_domain_signing_secret';
DELETE FROM wp_options WHERE option_name LIKE '%_location_id';
DELETE FROM wp_options WHERE option_name LIKE '%_signing_key';

