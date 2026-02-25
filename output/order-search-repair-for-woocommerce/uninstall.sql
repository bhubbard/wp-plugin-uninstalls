-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vnmWooOrderSearch_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_billing_address_index', '_shipping_address_index');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billing_address_index', '_shipping_address_index');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billing_address_index', '_shipping_address_index');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billing_address_index', '_shipping_address_index');

