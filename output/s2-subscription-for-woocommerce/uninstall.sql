-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('s2ws_settings', 'woocommerce_price_num_decimals', 'woocommerce_prices_include_tax', 'woocommerce_paypal_settings', '_stripe_last_transation_id', 's2_subscription_queue_flush_rewrite_rules', 'woocommerce_enable_order_comments');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('status', 'order_id', 'payment_method_title', 'expired_date', 'payment_type', 'product_name', 'quantity', 'activity', 's2_payment_type', 's2_trial_period', 's2_sign_up_fee', 's2_split_payment', 's2_billing_frequency', 's2_max_length', '_billing_email', 'billing_phone', 'subscriptions', '_paypal_transaction_ids', '_stripe_transaction_ids');
DELETE FROM wp_usermeta WHERE meta_key IN ('status', 'order_id', 'payment_method_title', 'expired_date', 'payment_type', 'product_name', 'quantity', 'activity', 's2_payment_type', 's2_trial_period', 's2_sign_up_fee', 's2_split_payment', 's2_billing_frequency', 's2_max_length', '_billing_email', 'billing_phone', 'subscriptions', '_paypal_transaction_ids', '_stripe_transaction_ids');
DELETE FROM wp_termmeta WHERE meta_key IN ('status', 'order_id', 'payment_method_title', 'expired_date', 'payment_type', 'product_name', 'quantity', 'activity', 's2_payment_type', 's2_trial_period', 's2_sign_up_fee', 's2_split_payment', 's2_billing_frequency', 's2_max_length', '_billing_email', 'billing_phone', 'subscriptions', '_paypal_transaction_ids', '_stripe_transaction_ids');
DELETE FROM wp_commentmeta WHERE meta_key IN ('status', 'order_id', 'payment_method_title', 'expired_date', 'payment_type', 'product_name', 'quantity', 'activity', 's2_payment_type', 's2_trial_period', 's2_sign_up_fee', 's2_split_payment', 's2_billing_frequency', 's2_max_length', '_billing_email', 'billing_phone', 'subscriptions', '_paypal_transaction_ids', '_stripe_transaction_ids');

