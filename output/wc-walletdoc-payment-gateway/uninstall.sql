-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_shop_page_id', 'woocommerce_bank2bank_settings', 'woocommerce_walletdoc_settings', 'woocommerce_checkout_page_id', 'WC_Walletdoc_version');
DELETE FROM wp_options WHERE option_name LIKE 'walletdoc_order_lock_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_subscription_trial_length', '_subscription_price', '_subscription_period', '_subscription_period_interval', '_subscription_sign_up_fee', '_subscription_trial_period');
DELETE FROM wp_usermeta WHERE meta_key IN ('_subscription_trial_length', '_subscription_price', '_subscription_period', '_subscription_period_interval', '_subscription_sign_up_fee', '_subscription_trial_period');
DELETE FROM wp_termmeta WHERE meta_key IN ('_subscription_trial_length', '_subscription_price', '_subscription_period', '_subscription_period_interval', '_subscription_sign_up_fee', '_subscription_trial_period');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_subscription_trial_length', '_subscription_price', '_subscription_period', '_subscription_period_interval', '_subscription_sign_up_fee', '_subscription_trial_period');

