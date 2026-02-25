-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_payplug_settings', 'woocommerce_currency', 'payplug_code_verifier', 'payplug_oauth_callback_uri');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_transaction_id', 'payplug_addresses_hash', '_payplug_metadata');
DELETE FROM wp_usermeta WHERE meta_key IN ('_transaction_id', 'payplug_addresses_hash', '_payplug_metadata');
DELETE FROM wp_termmeta WHERE meta_key IN ('_transaction_id', 'payplug_addresses_hash', '_payplug_metadata');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_transaction_id', 'payplug_addresses_hash', '_payplug_metadata');

