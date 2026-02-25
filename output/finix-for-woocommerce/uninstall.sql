-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_finix_gateway_settings', 'woocommerce_default_country', 'woocommerce_finix_apple_pay_gateway_settings', 'woocommerce_finix_google_pay_gateway_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_payments_secret_key';
DELETE FROM wp_options WHERE option_name LIKE '%_payments_webhooks_secret_key';

