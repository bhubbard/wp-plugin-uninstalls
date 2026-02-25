-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_payex_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_subscription_price', '_subscription_sign_up_fee', '_subscription_period', '_subscription_period_interval', '_subscription_length', '_subscription_trial_period', '_subscription_trial_length', '_subscription_payment_sync_date', '_schedule_next_payment', '_subscription_renewal', 'payex_mandate_number', 'payex_txn_type', 'payex_collection_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('_subscription_price', '_subscription_sign_up_fee', '_subscription_period', '_subscription_period_interval', '_subscription_length', '_subscription_trial_period', '_subscription_trial_length', '_subscription_payment_sync_date', '_schedule_next_payment', '_subscription_renewal', 'payex_mandate_number', 'payex_txn_type', 'payex_collection_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('_subscription_price', '_subscription_sign_up_fee', '_subscription_period', '_subscription_period_interval', '_subscription_length', '_subscription_trial_period', '_subscription_trial_length', '_subscription_payment_sync_date', '_schedule_next_payment', '_subscription_renewal', 'payex_mandate_number', 'payex_txn_type', 'payex_collection_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_subscription_price', '_subscription_sign_up_fee', '_subscription_period', '_subscription_period_interval', '_subscription_length', '_subscription_trial_period', '_subscription_trial_length', '_subscription_payment_sync_date', '_schedule_next_payment', '_subscription_renewal', 'payex_mandate_number', 'payex_txn_type', 'payex_collection_number');

