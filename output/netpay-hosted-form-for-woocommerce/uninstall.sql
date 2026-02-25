-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_pay_page_id', 'woocommerce_thanks_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('netpay_order_id', 'netpay_payment_status', 'netpay_transaction_id', '_sale_price', '_regular_price', '_tax_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('netpay_order_id', 'netpay_payment_status', 'netpay_transaction_id', '_sale_price', '_regular_price', '_tax_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('netpay_order_id', 'netpay_payment_status', 'netpay_transaction_id', '_sale_price', '_regular_price', '_tax_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('netpay_order_id', 'netpay_payment_status', 'netpay_transaction_id', '_sale_price', '_regular_price', '_tax_status');

