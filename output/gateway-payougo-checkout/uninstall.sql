-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_price_num_decimals', 'wc_gateway_ppce_display_decimal_msg', 'woocommerce_simplify_commerce_settings', 'wc_pyg_display_wc_3_0_warning', 'woocommerce_product_type', 'woocommerce_force_ssl_checkout', 'pp_woo_enabled', 'woocommerce_pyg_payougo_settings', 'pp_woo_environment', 'pp_woo_blockEChecks', 'pp_woo_requireBillingAddress', 'pp_woo_logging_enabled', 'pp_woo_useraccount', 'pp_woo_passwordaccount', 'pp_woo_apikeypayougo', 'pp_woo_customerbuyer', 'pp_woo_merchantaccountpayougo', 'pp_woo_paymentsendemail', 'wc_pyg_version', 'wc_gateway_pyg_bootstrap_warning_message_dismissed', 'wc_gateway_pyg_prompt_to_connect_message_dismissed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_order_stock_reduced', '_woo_pp_txnData', '_payougo_status', '_transaction_id', '_pyg_billing_agreement_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_order_stock_reduced', '_woo_pp_txnData', '_payougo_status', '_transaction_id', '_pyg_billing_agreement_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_order_stock_reduced', '_woo_pp_txnData', '_payougo_status', '_transaction_id', '_pyg_billing_agreement_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_order_stock_reduced', '_woo_pp_txnData', '_payougo_status', '_transaction_id', '_pyg_billing_agreement_id');

