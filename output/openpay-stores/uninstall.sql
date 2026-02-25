-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_openpay_stores_webhook_id', 'woocommerce_openpay_stores_settings', 'woocommerce_email_header_image', 'woocommerce_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_openpay_customer_sandbox_id', '_openpay_customer_id', '_openpay_customer_test_id', '_openpay_customer_live_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_openpay_customer_sandbox_id', '_openpay_customer_id', '_openpay_customer_test_id', '_openpay_customer_live_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_openpay_customer_sandbox_id', '_openpay_customer_id', '_openpay_customer_test_id', '_openpay_customer_live_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_openpay_customer_sandbox_id', '_openpay_customer_id', '_openpay_customer_test_id', '_openpay_customer_live_id');

