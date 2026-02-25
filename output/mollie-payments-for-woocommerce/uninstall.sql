-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mollie-payments-for-woocommerce_live_api_key', 'mollie-payments-for-woocommerce_test_api_key', 'woocommerce_gzdp_checkout_enable', 'mollie_wc_applepay_validated', 'mollie-payments-for-woocommerce_gatewayFeeLabel', 'mollie_wc_gateway_applepay_settings', 'mollie_wc_gateway_paypal_settings', 'woocommerce_prices_include_tax', 'woocommerce_tax_round_at_subtotal', 'mollie_wc_is_phone_required_flag', 'mollie-payments-for-woocommerce_order_status_cancelled_payments', 'mollie-payments-for-woocommerce_place_payment_onhold', 'mollie-payments-for-woocommerce_capture_or_void', 'mollie_wc_gateway_creditcard_settings', 'mollie_wc_gateway_voucher_settings', 'mollie_wc_gateway_mealvoucher_settings', 'woocommerce_version', 'woocommerce_subscriptions_active_version', 'mollie-payments-for-woocommerce_debug', 'mollie-payments-for-woocommerce_test_mode_enabled', 'mollie_wc_gateway_directdebit_settings', 'mollie-payments-for-woocommerce_removeOptionsAndTransients', 'svg_creditcards_string');
DELETE FROM wp_options WHERE option_name LIKE '%_accept_manual_renewals';
DELETE FROM wp_options WHERE option_name LIKE '%disableShipOrderAtMollie';
DELETE FROM wp_options WHERE option_name LIKE '%disableCancelOrderAtMollie';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_needs_processing';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mollie_voucher_category', '_mollie_customer_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mollie_voucher_category', '_mollie_customer_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mollie_voucher_category', '_mollie_customer_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mollie_voucher_category', '_mollie_customer_id');

