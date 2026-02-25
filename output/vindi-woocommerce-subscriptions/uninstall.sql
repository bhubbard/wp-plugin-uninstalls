-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency', 'active_sitewide_plugins', 'woocommerce_subscriptions_turn_off_automatic_payments', 'woocommerce_subscriptions_accept_manual_renewals', 'woocommerce_subscriptions_allow_switching', 'vindi_payment_methods', 'vindi_merchant', 'vindi_plans');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vindi_wc_invoice_download_url', 'vindi_user_code', 'vindi_variable_subscription_plan', 'vindi_subscription_plan', 'vindi_wc_cycle', 'vindi_wc_subscription_id', 'vindi_wc_bill_id', '_wcs_number_payments', '_subscription_period_interval', '_subscription_period', 'vindi_subscription_period_interval', 'vindi_subscription_period', '_subscription_length');
DELETE FROM wp_usermeta WHERE meta_key IN ('vindi_wc_invoice_download_url', 'vindi_user_code', 'vindi_variable_subscription_plan', 'vindi_subscription_plan', 'vindi_wc_cycle', 'vindi_wc_subscription_id', 'vindi_wc_bill_id', '_wcs_number_payments', '_subscription_period_interval', '_subscription_period', 'vindi_subscription_period_interval', 'vindi_subscription_period', '_subscription_length');
DELETE FROM wp_termmeta WHERE meta_key IN ('vindi_wc_invoice_download_url', 'vindi_user_code', 'vindi_variable_subscription_plan', 'vindi_subscription_plan', 'vindi_wc_cycle', 'vindi_wc_subscription_id', 'vindi_wc_bill_id', '_wcs_number_payments', '_subscription_period_interval', '_subscription_period', 'vindi_subscription_period_interval', 'vindi_subscription_period', '_subscription_length');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vindi_wc_invoice_download_url', 'vindi_user_code', 'vindi_variable_subscription_plan', 'vindi_subscription_plan', 'vindi_wc_cycle', 'vindi_wc_subscription_id', 'vindi_wc_bill_id', '_wcs_number_payments', '_subscription_period_interval', '_subscription_period', 'vindi_subscription_period_interval', 'vindi_subscription_period', '_subscription_length');

