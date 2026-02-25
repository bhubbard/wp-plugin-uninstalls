-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_payiq_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('payiq_transaction_id', '_transaction_id', '_payiq_subscription_id', '_order_currency', '_payiq_transaction_id', '_payiq_order_authorized', '_payiq_order_captured', '_order_total', '_subscription_renewal');
DELETE FROM wp_usermeta WHERE meta_key IN ('payiq_transaction_id', '_transaction_id', '_payiq_subscription_id', '_order_currency', '_payiq_transaction_id', '_payiq_order_authorized', '_payiq_order_captured', '_order_total', '_subscription_renewal');
DELETE FROM wp_termmeta WHERE meta_key IN ('payiq_transaction_id', '_transaction_id', '_payiq_subscription_id', '_order_currency', '_payiq_transaction_id', '_payiq_order_authorized', '_payiq_order_captured', '_order_total', '_subscription_renewal');
DELETE FROM wp_commentmeta WHERE meta_key IN ('payiq_transaction_id', '_transaction_id', '_payiq_subscription_id', '_order_currency', '_payiq_transaction_id', '_payiq_order_authorized', '_payiq_order_captured', '_order_total', '_subscription_renewal');

