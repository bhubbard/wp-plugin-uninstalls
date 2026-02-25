-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('shipping_address_1', 'shipping_city', 'shipping_state', 'shipping_postcode', 'shipping_country', 'billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('shipping_address_1', 'shipping_city', 'shipping_state', 'shipping_postcode', 'shipping_country', 'billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('shipping_address_1', 'shipping_city', 'shipping_state', 'shipping_postcode', 'shipping_country', 'billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('shipping_address_1', 'shipping_city', 'shipping_state', 'shipping_postcode', 'shipping_country', 'billing_phone');

