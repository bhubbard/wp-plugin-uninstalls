-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_gestpay_shop_login', 'wc_gestpay_account_type', 'wc_gestpay_api_key', 'wc_gestpay_test_url', 'wc_gestpay_force_recrypt', 'wc_gestpay_force_check_gateway_response', 'wc_gestpay_debug', 'wc_gateway_gestpay_moto_sep', 'wc_gateway_gestpay_order_status', 'wc_gestpay_param_tokenization_send_cvv', 'wc_gestpay_param_tokenization_save_token', 'wc_gestpay_token_auth', 'wc_gestpay_param_buyer_email', 'wc_gestpay_param_buyer_name', 'wc_gestpay_param_language', 'wc_gestpay_param_payment_types', 'wc_gestpay_param_seller_protection', 'wc_gestpay_param_custominfo', 'wc_gestpay_shop_login_recurring', 'wc_gestpay_api_key_recurring', 'wc_gestpay_force_crypt_http', 'woocommerce_wc_gateway_gestpay_bancomatpay_settings', 'wc_gestpaypro_bancomatpay', 'woocommerce_wc_gateway_gestpay_settings', 'woocommerce_wc_gateway_gestpay_consel_settings', 'wc_gestpaypro_consel', 'gestpay_wc_gateway_gestpay_flush_rewrite_rules_flag', 'woocommerce_wc_gateway_gestpay_mybank_settings', 'wc_gestpaypro_mybank', 'woocommerce_wc_gateway_gestpay_paypal_settings', 'wc_gestpaypro_paypal', 'woocommerce_currency');
DELETE FROM wp_options WHERE option_name LIKE '%_is_active';
DELETE FROM wp_options WHERE option_name LIKE 'wc_gestpaypro_%';
DELETE FROM wp_options WHERE option_name LIKE 'gestpay_mybank_list_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wc_gestpay_cc_default', 'session_tokens', 'last_update', '_payment_method', '_order_number_formatted');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wc_gestpay_cc_default', 'session_tokens', 'last_update', '_payment_method', '_order_number_formatted');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wc_gestpay_cc_default', 'session_tokens', 'last_update', '_payment_method', '_order_number_formatted');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wc_gestpay_cc_default', 'session_tokens', 'last_update', '_payment_method', '_order_number_formatted');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_gesp3ds2_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_gesp3ds2_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_gesp3ds2_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_gesp3ds2_%';

