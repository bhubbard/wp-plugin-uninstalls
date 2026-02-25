-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_gls_shipping_method_settings', 'woocommerce_gls_shipping_method_parcel_shop_settings', 'woocommerce_gls_shipping_method_parcel_locker_settings', 'woocommerce_gls_shipping_method_parcel_shop_zones_settings', 'woocommerce_gls_shipping_method_parcel_locker_zones_settings', 'woocommerce_store_address', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_store_address_2', 'woocommerce_default_country', 'woocommerce_weight_unit');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gls_restrict_parcel_shipping');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gls_restrict_parcel_shipping');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gls_restrict_parcel_shipping');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gls_restrict_parcel_shipping');

