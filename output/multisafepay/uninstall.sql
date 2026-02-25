-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('multisafepay_trigger_transaction_to_shipped', 'multisafepay_trigger_transaction_to_invoiced', 'woocommerce_checkout_page_id', 'multisafepay_debugmode', 'multisafepay_group_credit_cards', 'multisafepay_checkout_block_payment_icons', 'multisafepay_final_order_status', 'multisafepay_testmode', 'multisafepay_second_chance', 'multisafepay_disable_shopping_cart', 'multisafepay_redirect_after_cancel', 'multisafepay_order_request_description', 'multisafepay_time_active', 'multisafepay_time_unit', 'multisafepay_payment_component_template_id', 'woocommerce_multisafepay_creditcard_settings', 'woocommerce_smart_coupon_apply_before_tax', 'multisafepay_test_api_key', 'multisafepay_api_key', 'woocommerce_tax_round_at_subtotal', 'woocommerce_tax_based_on', 'woocommerce_tax_total_display', 'woocommerce_calc_discounts_sequentially', 'woocommerce_custom_orders_table_enabled', 'multisafepay_api_token', 'multisafepay_payment_methods', 'is_multisafepay_payment_component_qr_enabled');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_status';
DELETE FROM wp_options WHERE option_name LIKE 'multisafepay_%';
DELETE FROM wp_options WHERE option_name LIKE 'multisafepay_token_%';
DELETE FROM wp_options WHERE option_name LIKE 'multisafepay_qr_order_%';

