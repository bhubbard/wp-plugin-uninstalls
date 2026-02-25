-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('givepayments_secret_key', 'givepayments_settings', 'givepayments_environment', 'givepayments_production_api_key', 'givepayments_sandbox_api_key', 'givepayments_merchant_id', 'givepayments_webhook_set_production', 'givepayments_webhook_set_test', 'givepayments_image_url', 'givepayments_merchant_name', 'givepayments_can_process_money', 'givepayments_order_status', 'woocommerce_givepayments_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_givepayments_payment_initiated', '_givepayments_payment_failed', '_givepayments_image_url', '_givepayments_merchant_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('_givepayments_payment_initiated', '_givepayments_payment_failed', '_givepayments_image_url', '_givepayments_merchant_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('_givepayments_payment_initiated', '_givepayments_payment_failed', '_givepayments_image_url', '_givepayments_merchant_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_givepayments_payment_initiated', '_givepayments_payment_failed', '_givepayments_image_url', '_givepayments_merchant_name');

