-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_xh-mustang-pay-wc_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_merchant_order_pay_method', '_merchant_order_no');
DELETE FROM wp_usermeta WHERE meta_key IN ('_merchant_order_pay_method', '_merchant_order_no');
DELETE FROM wp_termmeta WHERE meta_key IN ('_merchant_order_pay_method', '_merchant_order_no');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_merchant_order_pay_method', '_merchant_order_no');

