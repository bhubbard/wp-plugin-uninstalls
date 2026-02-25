-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pickupp_region', 'pickupp_api_key', 'pickupp_auth_method', 'pickup_contact_person', 'pickup_contact_phone', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_city', 'woocommerce_store_postcode');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pickupp_order_number', '_pickupp_order_status', '_already_sent_with_pickupp', '_shipping_phone', '_weight', '_length', '_width', '_height', '_shipping_weight', '_shipping_length', '_shipping_width', '_shipping_height');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pickupp_order_number', '_pickupp_order_status', '_already_sent_with_pickupp', '_shipping_phone', '_weight', '_length', '_width', '_height', '_shipping_weight', '_shipping_length', '_shipping_width', '_shipping_height');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pickupp_order_number', '_pickupp_order_status', '_already_sent_with_pickupp', '_shipping_phone', '_weight', '_length', '_width', '_height', '_shipping_weight', '_shipping_length', '_shipping_width', '_shipping_height');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pickupp_order_number', '_pickupp_order_status', '_already_sent_with_pickupp', '_shipping_phone', '_weight', '_length', '_width', '_height', '_shipping_weight', '_shipping_length', '_shipping_width', '_shipping_height');

