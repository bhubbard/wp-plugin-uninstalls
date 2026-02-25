-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_ship_to_destination', 'woocommerce_komoju_settings', 'komoju_woocommerce_payment_types', 'komoju_woocommerce_just_connected_merchant_name', 'komoju_woocommerce_nonce', 'komoju_woocommerce_secret_key', 'woocommerce_komoju_linepay_settings', 'komoju_woocommerce_payment_methods', 'woocommerce_test_komoju_settings', 'komoju_woocommerce_publishable_key', 'komoju_woocommerce_webhook_secret', 'komoju_woocommerce_ipn_async', 'komoju_woocommerce_fields_url', 'komoju_woocommerce_api_endpoint', 'komoju_woocommerce_waf_staging_token', 'komoju_woocommerce_invoice_prefix', 'komoju_woocommerce_debug_log');
DELETE FROM wp_options WHERE option_name LIKE 'komoju_woocommerce_%';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

