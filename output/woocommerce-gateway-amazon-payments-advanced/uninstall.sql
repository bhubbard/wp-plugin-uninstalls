-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_gzd_checkout_stop_order_cancellation', 'amazon_payments_advanced_enabled_anniversary_date', 'amazon_payments_advanced_hidden_until_date', 'woocommerce_amazon_payments_advanced_saved_payload', 'woocommerce_currency', 'amazon_pay_simulation_stack', 'woocommerce_amazon_payments_advanced_settings', 'amazon_api_version', 'woocommerce_amazon_payments_new_install', 'woocommerce_subscriptions_turn_off_automatic_payments', 'woocs_is_multiple_allowed', '_wcml_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('amazon_reference_state', 'amazon_reference_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('amazon_reference_state', 'amazon_reference_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('amazon_reference_state', 'amazon_reference_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('amazon_reference_state', 'amazon_reference_id');

