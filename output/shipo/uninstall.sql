-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shipo_api_key', 'shipo_access_token', 'shipo_token_expiry', 'shipo_sender_address', 'shipo_automation_awb', 'shipo_custom_delivery_name', 'shipo_show_couriers', 'shipo_free_shipping', 'shipo_test_mode', 'shipo_sender_method', 'shipo_couriers_show', 'shipo_couriers_show_services', 'shipo_couriers_custom_price', 'shipo_couriers_custom_price_type', 'shipo_couriers_custom_name', 'shipo_sender_locker', 'woocommerce_default_country', 'shipo_admin_notices');
DELETE FROM wp_options WHERE option_name LIKE 'shipo_pricing_percentage_%';
DELETE FROM wp_options WHERE option_name LIKE 'shipo_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_shipo_shipping_address');
DELETE FROM wp_usermeta WHERE meta_key IN ('_shipo_shipping_address');
DELETE FROM wp_termmeta WHERE meta_key IN ('_shipo_shipping_address');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_shipo_shipping_address');

