-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easysecure_active_subscription_orders');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_enable_custom_subscription', '_custom_subscription_interval', '_custom_subscription_interval_count', '_custom_subscription_expiry_unit', '_custom_subscription_expiry_count', '_custom_subscription_check', '_easysecure_last_saved_payment_token');
DELETE FROM wp_usermeta WHERE meta_key IN ('_enable_custom_subscription', '_custom_subscription_interval', '_custom_subscription_interval_count', '_custom_subscription_expiry_unit', '_custom_subscription_expiry_count', '_custom_subscription_check', '_easysecure_last_saved_payment_token');
DELETE FROM wp_termmeta WHERE meta_key IN ('_enable_custom_subscription', '_custom_subscription_interval', '_custom_subscription_interval_count', '_custom_subscription_expiry_unit', '_custom_subscription_expiry_count', '_custom_subscription_check', '_easysecure_last_saved_payment_token');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_enable_custom_subscription', '_custom_subscription_interval', '_custom_subscription_interval_count', '_custom_subscription_expiry_unit', '_custom_subscription_expiry_count', '_custom_subscription_check', '_easysecure_last_saved_payment_token');

