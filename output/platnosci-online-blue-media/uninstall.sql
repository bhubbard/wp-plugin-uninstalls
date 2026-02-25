-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_bluemedia_settings', 'bm_payment_methods_order', 'woocommerce_bluemedia_payment_gateway_settings', 'woocommerce_hold_stock_minutes', 'autopay_order_remote_status_path', 'bluemedia_activated', 'woocommerce_gateway_order', 'autopay_debug_enabled');
DELETE FROM wp_options WHERE option_name LIKE 'autopay_request_%';
DELETE FROM wp_options WHERE option_name LIKE 'autopay_audit_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('autopay_test_product', 'bm_order_payment_params', 'bm_order_itn_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('autopay_test_product', 'bm_order_payment_params', 'bm_order_itn_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('autopay_test_product', 'bm_order_payment_params', 'bm_order_itn_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('autopay_test_product', 'bm_order_payment_params', 'bm_order_itn_status');

