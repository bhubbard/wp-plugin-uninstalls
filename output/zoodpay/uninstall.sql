-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_Zoodpay_configuration', '_Zoodpay_Market_code_', '_zoodpay_success', '_zoodpay_failure', 'woocommerce_zoodpay_settings', '_ZPI_min_value_', '_ZPI_max_value_', '_PAD_min_value_', '_PAD_max_value_', '_Zoodpay_config_status_', 'woocommerce_currency');
DELETE FROM wp_options WHERE option_name LIKE '%_min_value_';
DELETE FROM wp_options WHERE option_name LIKE '%_max_value_';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_transaction_id', '_refund_status', '_request_id', '_refund_id', '_shipping_phone', 'zoodpay_failed_status', 'zoodpay_refund_status', '_transaction_type', 'declined_reason', '_refund_amount', '_order_total', '_declined_amount');
DELETE FROM wp_usermeta WHERE meta_key IN ('_transaction_id', '_refund_status', '_request_id', '_refund_id', '_shipping_phone', 'zoodpay_failed_status', 'zoodpay_refund_status', '_transaction_type', 'declined_reason', '_refund_amount', '_order_total', '_declined_amount');
DELETE FROM wp_termmeta WHERE meta_key IN ('_transaction_id', '_refund_status', '_request_id', '_refund_id', '_shipping_phone', 'zoodpay_failed_status', 'zoodpay_refund_status', '_transaction_type', 'declined_reason', '_refund_amount', '_order_total', '_declined_amount');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_transaction_id', '_refund_status', '_request_id', '_refund_id', '_shipping_phone', 'zoodpay_failed_status', 'zoodpay_refund_status', '_transaction_type', 'declined_reason', '_refund_amount', '_order_total', '_declined_amount');

