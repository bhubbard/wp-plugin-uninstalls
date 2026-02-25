-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_bco_settings', 'woocommerce_smart_coupon_apply_before_tax');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_billmate_transaction_id', '_billmate_payment_denied', '_billmate_hash', '_billmate_temp_order_id', '_billmate_saved_woo_order_no', '_billmate_payment_method_name', '_billmate_payment_method_id', '_shipping_email', '_transaction_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billmate_transaction_id', '_billmate_payment_denied', '_billmate_hash', '_billmate_temp_order_id', '_billmate_saved_woo_order_no', '_billmate_payment_method_name', '_billmate_payment_method_id', '_shipping_email', '_transaction_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billmate_transaction_id', '_billmate_payment_denied', '_billmate_hash', '_billmate_temp_order_id', '_billmate_saved_woo_order_no', '_billmate_payment_method_name', '_billmate_payment_method_id', '_shipping_email', '_transaction_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billmate_transaction_id', '_billmate_payment_denied', '_billmate_hash', '_billmate_temp_order_id', '_billmate_saved_woo_order_no', '_billmate_payment_method_name', '_billmate_payment_method_id', '_shipping_email', '_transaction_id');

