-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('invelity-plugins-description', 'invelity-plugins-ad', 'invelity-admin-message-gls-parcelshop');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('inv_gls_picked_shop_id', 'inv_gls_picked_shop_name', 'inv_gls_picked_shop_address', 'inv_gls_parcelshop_id_dopravy', '_shipping_city', '_shipping_postcode', '_shipping_address_1');
DELETE FROM wp_usermeta WHERE meta_key IN ('inv_gls_picked_shop_id', 'inv_gls_picked_shop_name', 'inv_gls_picked_shop_address', 'inv_gls_parcelshop_id_dopravy', '_shipping_city', '_shipping_postcode', '_shipping_address_1');
DELETE FROM wp_termmeta WHERE meta_key IN ('inv_gls_picked_shop_id', 'inv_gls_picked_shop_name', 'inv_gls_picked_shop_address', 'inv_gls_parcelshop_id_dopravy', '_shipping_city', '_shipping_postcode', '_shipping_address_1');
DELETE FROM wp_commentmeta WHERE meta_key IN ('inv_gls_picked_shop_id', 'inv_gls_picked_shop_name', 'inv_gls_picked_shop_address', 'inv_gls_parcelshop_id_dopravy', '_shipping_city', '_shipping_postcode', '_shipping_address_1');

