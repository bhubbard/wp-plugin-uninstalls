-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_force_ssl_checkout');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_openpay_customer_sandbox_id', '_openpay_customer_id', '_openpay_webhook_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_openpay_customer_sandbox_id', '_openpay_customer_id', '_openpay_webhook_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_openpay_customer_sandbox_id', '_openpay_customer_id', '_openpay_webhook_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_openpay_customer_sandbox_id', '_openpay_customer_id', '_openpay_webhook_id');

