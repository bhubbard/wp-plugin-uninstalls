-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_shipping_pickup_stores', 'city', 'store_country', '_wpcs_address_1', '_wpcs_postcode', '_shipping_address_1', '_shipping_city', '_shipping_country', '_shipping_postcode');
DELETE FROM wp_usermeta WHERE meta_key IN ('_shipping_pickup_stores', 'city', 'store_country', '_wpcs_address_1', '_wpcs_postcode', '_shipping_address_1', '_shipping_city', '_shipping_country', '_shipping_postcode');
DELETE FROM wp_termmeta WHERE meta_key IN ('_shipping_pickup_stores', 'city', 'store_country', '_wpcs_address_1', '_wpcs_postcode', '_shipping_address_1', '_shipping_city', '_shipping_country', '_shipping_postcode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_shipping_pickup_stores', 'city', 'store_country', '_wpcs_address_1', '_wpcs_postcode', '_shipping_address_1', '_shipping_city', '_shipping_country', '_shipping_postcode');

