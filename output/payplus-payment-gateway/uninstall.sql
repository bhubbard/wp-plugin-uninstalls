-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('payplus_invoice_option', 'woocommerce_payplus-payment-gateway_settings', 'woocommerce_default_country', 'woocommerce_payplus-payment-gateway-applepay_settings', 'woocommerce_payplus-payment-gateway-hostedfields_settings', 'wc_payplus_display_embedded_count', 'woocommerce_payplus-payment-gateway-pos-emv_settings', 'woocommerce_custom_orders_table_enabled', 'payplus-payment-gateway-multipass', 'payplus_create_invoice', 'payplus_db_version', 'settings_payplus_page_error_option', 'error_page_payplus', 'woocommerce_calc_taxes', 'payplus_apple_pay_identifier', 'payplus_clearing_companies', 'payplus_issuers_companies', 'payplus_brands', 'payplus_generate_key_link_dashboard', 'wc_payplus_version', 'wc_payplus_display_maam_count', 'woocommerce_price_num_decimals', 'payplus_plugin_integrity_check_failed', 'payplus_plugin_integrity_check_success', 'payplus_admin_notice', 'payment_ips');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cc_token', 'order_validated_error', 'payplus_type', '_billing_vat_number', 'payplus_transaction_type', 'payplus_error_sub', 'payplus_balance_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('cc_token', 'order_validated_error', 'payplus_type', '_billing_vat_number', 'payplus_transaction_type', 'payplus_error_sub', 'payplus_balance_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('cc_token', 'order_validated_error', 'payplus_type', '_billing_vat_number', 'payplus_transaction_type', 'payplus_error_sub', 'payplus_balance_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cc_token', 'order_validated_error', 'payplus_type', '_billing_vat_number', 'payplus_transaction_type', 'payplus_error_sub', 'payplus_balance_name');

