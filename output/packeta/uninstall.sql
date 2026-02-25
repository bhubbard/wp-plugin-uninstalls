-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_store_address', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_allowed_countries', 'woocommerce_specific_allowed_countries', 'woocommerce_ship_to_countries', 'woocommerce_specific_ship_to_countries', 'edit_shop_order_per_page');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('street', 'city', 'postCode', 'houseNumber', 'county', 'longitude', 'latitude');
DELETE FROM wp_usermeta WHERE meta_key IN ('street', 'city', 'postCode', 'houseNumber', 'county', 'longitude', 'latitude');
DELETE FROM wp_termmeta WHERE meta_key IN ('street', 'city', 'postCode', 'houseNumber', 'county', 'longitude', 'latitude');
DELETE FROM wp_commentmeta WHERE meta_key IN ('street', 'city', 'postCode', 'houseNumber', 'county', 'longitude', 'latitude');

