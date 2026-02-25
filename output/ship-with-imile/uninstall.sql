-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('api_json', 'woocommerce_imile_shipping_method_settings', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_default_country');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('imile_create_shipping_response', 'rtu__t', 'imile_update_shipping_response', 'imile_check_shipping_response__', 'imile_delete_shipping_response', '_item_volume', '_thankyou_action_done');
DELETE FROM wp_usermeta WHERE meta_key IN ('imile_create_shipping_response', 'rtu__t', 'imile_update_shipping_response', 'imile_check_shipping_response__', 'imile_delete_shipping_response', '_item_volume', '_thankyou_action_done');
DELETE FROM wp_termmeta WHERE meta_key IN ('imile_create_shipping_response', 'rtu__t', 'imile_update_shipping_response', 'imile_check_shipping_response__', 'imile_delete_shipping_response', '_item_volume', '_thankyou_action_done');
DELETE FROM wp_commentmeta WHERE meta_key IN ('imile_create_shipping_response', 'rtu__t', 'imile_update_shipping_response', 'imile_check_shipping_response__', 'imile_delete_shipping_response', '_item_volume', '_thankyou_action_done');

