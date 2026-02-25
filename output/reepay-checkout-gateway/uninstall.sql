-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_custom_orders_table_enabled', 'reepay_csv_data_migration_mobilepay_to_vipps', 'woocommerce_reepay_checkout_settings', 'woocommerce_currency', 'woocommerce_reepay_version', 'reepay_api_action_error', 'reepay_api_action_success', 'reepay_mobilepay_gateway_settings_saved_notice', 'reepay_mobilepay_subscriptions_gateway_settings_saved_notice', 'gateways_reepay', 'reepay_webhook_settings_secret');
DELETE FROM wp_options WHERE option_name LIKE 'woocommerce_reepay_webhook_%';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE 'reepay_order_complete_should_settle_%';
DELETE FROM wp_options WHERE option_name LIKE 'reepay_invoice_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('reepay_customer_id', '_reepay_enable_age_verification', '_reepay_minimum_age');
DELETE FROM wp_usermeta WHERE meta_key IN ('reepay_customer_id', '_reepay_enable_age_verification', '_reepay_minimum_age');
DELETE FROM wp_termmeta WHERE meta_key IN ('reepay_customer_id', '_reepay_enable_age_verification', '_reepay_minimum_age');
DELETE FROM wp_commentmeta WHERE meta_key IN ('reepay_customer_id', '_reepay_enable_age_verification', '_reepay_minimum_age');

