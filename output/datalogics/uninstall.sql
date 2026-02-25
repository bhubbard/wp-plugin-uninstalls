-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('datalogics_token', 'datalogics_shipping_auto_create_delivery', 'datalogics_shipping_order_status', 'datalogics_shipping_method', 'datalogics_shipping_locations', 'datalogics_platforms', 'datalogics_myaccount_tracking_email', 'datalogics_myaccount_tracking', 'datalogics_shipping_options_enabled', 'datalogics_shipping_options', 'datalogics_view_option', 'datalogics_google_key', 'datalogics_cities_auto', 'datalogics_ncode_auto', 'shipping_push_supplier', 'datalogics_myaccount_tracking_email_link', 'woocommerce_email_footer_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('datalogics_shipping', 'datalogics_shipment_type', 'datalogics_n_code_platform_id', 'datalogics_n_code', 'datalogics_shipping_status', 'datalogics_test_one');
DELETE FROM wp_usermeta WHERE meta_key IN ('datalogics_shipping', 'datalogics_shipment_type', 'datalogics_n_code_platform_id', 'datalogics_n_code', 'datalogics_shipping_status', 'datalogics_test_one');
DELETE FROM wp_termmeta WHERE meta_key IN ('datalogics_shipping', 'datalogics_shipment_type', 'datalogics_n_code_platform_id', 'datalogics_n_code', 'datalogics_shipping_status', 'datalogics_test_one');
DELETE FROM wp_commentmeta WHERE meta_key IN ('datalogics_shipping', 'datalogics_shipment_type', 'datalogics_n_code_platform_id', 'datalogics_n_code', 'datalogics_shipping_status', 'datalogics_test_one');

