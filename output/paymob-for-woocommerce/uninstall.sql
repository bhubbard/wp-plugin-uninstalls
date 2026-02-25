-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_paymob-main_settings', 'woocommerce_paymob-pixel_settings', 'woocommerce_valu_widget_settings', 'paymob_gateway_order', 'woocommerce_paymob_settings', 'woocommerce_paymob_gateway_data', 'woocommerce_paymob-subscription_settings', 'woocommerce_hold_stock_minutes', 'woocommerce_default_country', 'woocommerce_paymob_country', 'woocommerce_paymob_gateway_data_failure', 'cards_integration_id', 'apple_pay_integration_id', 'google_pay_integration_id', 'show_save_card', 'title', 'active_sitewide_plugins', 'paymob_activation_redirect', 'paymob_auth_token', 'paymob_flash_notice');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_webhook_url', '_subscription_period_interval', '_subscription_period', '_subscription_sign_up_fee', '_subscription_length', '_paymob_plan_id', '_paymob_start_date', '_paymob_saved_period', '_paymob_saved_period_interval', 'PaymobMerchantOrderID', 'PaymobTransactionId');
DELETE FROM wp_usermeta WHERE meta_key IN ('_webhook_url', '_subscription_period_interval', '_subscription_period', '_subscription_sign_up_fee', '_subscription_length', '_paymob_plan_id', '_paymob_start_date', '_paymob_saved_period', '_paymob_saved_period_interval', 'PaymobMerchantOrderID', 'PaymobTransactionId');
DELETE FROM wp_termmeta WHERE meta_key IN ('_webhook_url', '_subscription_period_interval', '_subscription_period', '_subscription_sign_up_fee', '_subscription_length', '_paymob_plan_id', '_paymob_start_date', '_paymob_saved_period', '_paymob_saved_period_interval', 'PaymobMerchantOrderID', 'PaymobTransactionId');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_webhook_url', '_subscription_period_interval', '_subscription_period', '_subscription_sign_up_fee', '_subscription_length', '_paymob_plan_id', '_paymob_start_date', '_paymob_saved_period', '_paymob_saved_period_interval', 'PaymobMerchantOrderID', 'PaymobTransactionId');

