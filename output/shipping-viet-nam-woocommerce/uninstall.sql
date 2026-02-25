-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_weight_unit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ghn_code', '_ghtk_code', '_shipping_svw_province', '_shipping_svw_district', '_shipping_svw_ward', '_billing_svw_province', '_billing_svw_district', '_billing_svw_ward', '_shipping_first_name', '_shipping_last_name', '_shipping_address_1', '_shipping_phone', 'billing_svw_province', 'billing_svw_district', 'billing_svw_ward');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ghn_code', '_ghtk_code', '_shipping_svw_province', '_shipping_svw_district', '_shipping_svw_ward', '_billing_svw_province', '_billing_svw_district', '_billing_svw_ward', '_shipping_first_name', '_shipping_last_name', '_shipping_address_1', '_shipping_phone', 'billing_svw_province', 'billing_svw_district', 'billing_svw_ward');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ghn_code', '_ghtk_code', '_shipping_svw_province', '_shipping_svw_district', '_shipping_svw_ward', '_billing_svw_province', '_billing_svw_district', '_billing_svw_ward', '_shipping_first_name', '_shipping_last_name', '_shipping_address_1', '_shipping_phone', 'billing_svw_province', 'billing_svw_district', 'billing_svw_ward');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ghn_code', '_ghtk_code', '_shipping_svw_province', '_shipping_svw_district', '_shipping_svw_ward', '_billing_svw_province', '_billing_svw_district', '_billing_svw_ward', '_shipping_first_name', '_shipping_last_name', '_shipping_address_1', '_shipping_phone', 'billing_svw_province', 'billing_svw_district', 'billing_svw_ward');

