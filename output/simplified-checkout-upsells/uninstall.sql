-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simplified_checkout_checkout_endpoint', 'simplified_checkout_checkout_live', 'simplified_checkout_license_key', 'simplified_checkout_should_create_keys', 'simplified_checkout_wc_keys_created', 'simplified_checkout_wc_store_url', 'simplified_checkout_wc_consumer_key', 'simplified_checkout_wc_consumer_secret', 'woocommerce_weight_unit');

