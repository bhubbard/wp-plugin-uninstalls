-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_calc_taxes', 'woocommerce_prices_include_tax', 'woocommerce_default_country', 'woocommerce_express_checkout_settings', 'woocommerce_force_ssl_checkout', 'ppcp_sandbox_webhook_id', 'ppcp_live_webhook_id', 'woocommerce_ppcp_paypal_checkout_settings', 'pec-upgrade-notice-dismissed', 'ppcp_sandbox_client_token', 'ppcp_live_client_token', 'ppcp_client_token', 'ppcp_is_webhook_process_started');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('shipping_first_name', 'shipping_last_name', '_payment_method', '_payment_method_title', '_customer_user', '_billing_phone', 'order_comments', '_transaction_id', '_express_chekout_transactionid', 'PayPal Transaction Fee', '_order_stock_reduced', '_paypal_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('shipping_first_name', 'shipping_last_name', '_payment_method', '_payment_method_title', '_customer_user', '_billing_phone', 'order_comments', '_transaction_id', '_express_chekout_transactionid', 'PayPal Transaction Fee', '_order_stock_reduced', '_paypal_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('shipping_first_name', 'shipping_last_name', '_payment_method', '_payment_method_title', '_customer_user', '_billing_phone', 'order_comments', '_transaction_id', '_express_chekout_transactionid', 'PayPal Transaction Fee', '_order_stock_reduced', '_paypal_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('shipping_first_name', 'shipping_last_name', '_payment_method', '_payment_method_title', '_customer_user', '_billing_phone', 'order_comments', '_transaction_id', '_express_chekout_transactionid', 'PayPal Transaction Fee', '_order_stock_reduced', '_paypal_status');

