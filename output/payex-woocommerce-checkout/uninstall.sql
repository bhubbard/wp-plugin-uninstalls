-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_payex_checkout_version', 'wc-payex-checkout-notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_payex_paymentorder_id', '_payex_consumer_profile', '_payex_payment_id', '_payex_consumer_address_billing', '_payex_consumer_address');
DELETE FROM wp_usermeta WHERE meta_key IN ('_payex_paymentorder_id', '_payex_consumer_profile', '_payex_payment_id', '_payex_consumer_address_billing', '_payex_consumer_address');
DELETE FROM wp_termmeta WHERE meta_key IN ('_payex_paymentorder_id', '_payex_consumer_profile', '_payex_payment_id', '_payex_consumer_address_billing', '_payex_consumer_address');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_payex_paymentorder_id', '_payex_consumer_profile', '_payex_payment_id', '_payex_consumer_address_billing', '_payex_consumer_address');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_payex_consumer_address_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_payex_consumer_address_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_payex_consumer_address_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_payex_consumer_address_%';

