-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iota_pay_per_content_wallet_address', 'iota_pay_per_content_node_host', 'iota_pay_per_content_confirmed_payments', 'iotappc_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('payUsingIOTA_enabled', 'payUsingIOTA_amount', 'payUsingIOTA_unit');
DELETE FROM wp_usermeta WHERE meta_key IN ('payUsingIOTA_enabled', 'payUsingIOTA_amount', 'payUsingIOTA_unit');
DELETE FROM wp_termmeta WHERE meta_key IN ('payUsingIOTA_enabled', 'payUsingIOTA_amount', 'payUsingIOTA_unit');
DELETE FROM wp_commentmeta WHERE meta_key IN ('payUsingIOTA_enabled', 'payUsingIOTA_amount', 'payUsingIOTA_unit');

