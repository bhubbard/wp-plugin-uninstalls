-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ghst_woocommerce_cities', 'ghst_woocommerce_user_token', 'ghst_woocommerce_city_info', 'woocommerce_ghst_shipping_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ghst_order_id', '_ghst_tracking_link', '_shipping_first_name', '_shipping_last_name', '_billing_phone', '_shipping_address_1', '_shipping_address_2', '_shipping_city', '_shipping_state');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ghst_order_id', '_ghst_tracking_link', '_shipping_first_name', '_shipping_last_name', '_billing_phone', '_shipping_address_1', '_shipping_address_2', '_shipping_city', '_shipping_state');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ghst_order_id', '_ghst_tracking_link', '_shipping_first_name', '_shipping_last_name', '_billing_phone', '_shipping_address_1', '_shipping_address_2', '_shipping_city', '_shipping_state');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ghst_order_id', '_ghst_tracking_link', '_shipping_first_name', '_shipping_last_name', '_billing_phone', '_shipping_address_1', '_shipping_address_2', '_shipping_city', '_shipping_state');

