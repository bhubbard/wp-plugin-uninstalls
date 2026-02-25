-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mav_it_deliveo_settings', 'woocommerce_currency');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_deliveo_exported', '_group_code', '_order_total', '_shipping_first_name', '_shipping_last_name', '_shipping_postcode', '_shipping_city', '_shipping_address_1', '_shipping_address_2', '_billing_phone', '_billing_email', '_sku');
DELETE FROM wp_usermeta WHERE meta_key IN ('_deliveo_exported', '_group_code', '_order_total', '_shipping_first_name', '_shipping_last_name', '_shipping_postcode', '_shipping_city', '_shipping_address_1', '_shipping_address_2', '_billing_phone', '_billing_email', '_sku');
DELETE FROM wp_termmeta WHERE meta_key IN ('_deliveo_exported', '_group_code', '_order_total', '_shipping_first_name', '_shipping_last_name', '_shipping_postcode', '_shipping_city', '_shipping_address_1', '_shipping_address_2', '_billing_phone', '_billing_email', '_sku');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_deliveo_exported', '_group_code', '_order_total', '_shipping_first_name', '_shipping_last_name', '_shipping_postcode', '_shipping_city', '_shipping_address_1', '_shipping_address_2', '_billing_phone', '_billing_email', '_sku');

