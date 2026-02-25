-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_email_background_color', 'woocommerce_email_body_background_color', 'woocommerce_email_base_color', 'woocommerce_email_text_color', 'woocommerce_email_header_image', 'wcrsprd_emasapcerr', 'wcrsprd_pickup_locations', 'wcrsprd_apimode', 'wcrsprd_apigmap', 'wcrsprd_apikey_live', 'wcrsprd_apikey', 'wcrsprd_apitoken_live', 'wcrsprd_apitoken', 'wcrsprd_apisecret_live', 'wcrsprd_apisecret', 'wcrsprd_apiphone_live', 'wcrsprd_apiphone', 'wcrsprd_apipmamsg', 'wcrsprd_apidelivery', 'wcrsprd_emasaporderr', 'wcrsprd_forceasapp', 'wcrsprd_add_provinces_dropdown', 'asap_507_update_data', 'woocommerce_asap-shipping-method_settings', 'asap_latitud', 'asap_longitud', 'asap_origin', 'asap_address');
DELETE FROM wp_options WHERE option_name LIKE 'wcrsprd_apitoken%';
DELETE FROM wp_options WHERE option_name LIKE 'wcrsprd_apisecret%';
DELETE FROM wp_options WHERE option_name LIKE 'wcrsprd_apikey%';
DELETE FROM wp_options WHERE option_name LIKE 'wcrsprd_apiphone%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('asap_delivery_id', 'asap_pickup_location', 'dest_address', 'asap_latitude_dest', 'dest_latitude', 'asap_longitude_dest', 'dest_longitude', 'asap_tracking_link', 'partial_match', 'cancelOrder', 'asap_vehicle_type', 'asap_laitude_dest');
DELETE FROM wp_usermeta WHERE meta_key IN ('asap_delivery_id', 'asap_pickup_location', 'dest_address', 'asap_latitude_dest', 'dest_latitude', 'asap_longitude_dest', 'dest_longitude', 'asap_tracking_link', 'partial_match', 'cancelOrder', 'asap_vehicle_type', 'asap_laitude_dest');
DELETE FROM wp_termmeta WHERE meta_key IN ('asap_delivery_id', 'asap_pickup_location', 'dest_address', 'asap_latitude_dest', 'dest_latitude', 'asap_longitude_dest', 'dest_longitude', 'asap_tracking_link', 'partial_match', 'cancelOrder', 'asap_vehicle_type', 'asap_laitude_dest');
DELETE FROM wp_commentmeta WHERE meta_key IN ('asap_delivery_id', 'asap_pickup_location', 'dest_address', 'asap_latitude_dest', 'dest_latitude', 'asap_longitude_dest', 'dest_longitude', 'asap_tracking_link', 'partial_match', 'cancelOrder', 'asap_vehicle_type', 'asap_laitude_dest');

