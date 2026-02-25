-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_wuunder_google_maps_api_key', 'wc_wuunder_api_status', 'woocommerce_wuunder_parcelshop_settings', 'default_carrier_list', 'wc_wuunder_mapping_method_1', 'wc_wuunder_mapping_filter_1', 'wc_wuunder_mapping_method_2', 'wc_wuunder_mapping_filter_2', 'wc_wuunder_mapping_method_3', 'wc_wuunder_mapping_filter_3', 'wc_wuunder_mapping_method_4', 'wc_wuunder_mapping_filter_4', 'woocommerce_weight_unit', 'wc_wuunder_api', 'wc_wuunder_test_api', 'woocommerce_ship_to_destination', 'wc_wuunder_default_image_base64', 'wc_wuunder_company_email', 'wc_wuunder_company_lastname', 'wc_wuunder_company_firstname', 'wc_wuunder_company_city', 'wc_wuunder_company_street', 'wc_wuunder_company_housenumber', 'wc_wuunder_company_postode', 'wc_wuunder_company_phone', 'wc_wuunder_company_country', 'wc_wuunder_company_name');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wuunder_label_booking_token', 'parcelshop_id', '_wuunder_label_booking_url', '_wuunder_label_id', '_wuunder_label_url', '_wuunder_track_and_trace_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wuunder_label_booking_token', 'parcelshop_id', '_wuunder_label_booking_url', '_wuunder_label_id', '_wuunder_label_url', '_wuunder_track_and_trace_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wuunder_label_booking_token', 'parcelshop_id', '_wuunder_label_booking_url', '_wuunder_label_id', '_wuunder_label_url', '_wuunder_track_and_trace_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wuunder_label_booking_token', 'parcelshop_id', '_wuunder_label_booking_url', '_wuunder_label_id', '_wuunder_label_url', '_wuunder_track_and_trace_url');

