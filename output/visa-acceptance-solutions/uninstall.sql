-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_checkout_pay_endpoint', 'woocommerce_subscriptions_sync_payments', 'woocommerce_subscriptions_prorate_synced_payments', 'woocommerce_subscriptions_enable_early_renewal_via_modal', 'woocommerce_subscriptions_zero_initial_payment_requires_payment', 'woocommerce_tax_display_shop');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_subscription_sign_up_fee', '_subscription_payment_sync_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_subscription_sign_up_fee', '_subscription_payment_sync_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_subscription_sign_up_fee', '_subscription_payment_sync_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_subscription_sign_up_fee', '_subscription_payment_sync_date');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wc_cybersource_customer_id_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wc_cybersource_customer_id_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wc_cybersource_customer_id_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wc_cybersource_customer_id_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_flex_cvv_token';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_flex_cvv_token';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_flex_cvv_token';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_flex_cvv_token';

