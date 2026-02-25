-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_ppec_paypal_settings', 'woocommerce_price_num_decimals', 'wc_gateway_ppce_display_decimal_msg', 'woocommerce_simplify_commerce_settings', 'wc_ppec_display_wc_3_0_warning', 'woocommerce_new_order_settings', 'woo_pp_admin_error', 'pp_woo_enabled', 'pp_woo_logoImageUrl', 'pp_woo_paymentAction', 'pp_woo_subtotalMismatchBehavior', 'pp_woo_environment', 'pp_woo_button_size', 'pp_woo_blockEChecks', 'pp_woo_requireBillingAddress', 'pp_woo_logging_enabled', 'pp_woo_liveApiCredentials', 'pp_woo_sandboxApiCredentials', 'wc_ppec_version', 'wc_gateway_ppec_bootstrap_warning_message_dismissed', 'wc_gateway_ppec_prompt_to_connect_message_dismissed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_order_stock_reduced', '_woo_pp_txnData', '_paypal_status', '_transaction_id', '_ppec_billing_agreement_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_order_stock_reduced', '_woo_pp_txnData', '_paypal_status', '_transaction_id', '_ppec_billing_agreement_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_order_stock_reduced', '_woo_pp_txnData', '_paypal_status', '_transaction_id', '_ppec_billing_agreement_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_order_stock_reduced', '_woo_pp_txnData', '_paypal_status', '_transaction_id', '_ppec_billing_agreement_id');

