-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dpd_api_service_provider', 'dpd_test_mode', 'dpd_api_username', 'dpd_api_password', 'dpd_parcels_countries', 'dpd_rod_service', 'dpd_return_labels', 'woocommerce_weight_unit', 'dpd_parcel_distribution', 'dpd_label_size', 'woocommerce_default_country', 'dpd_google_map_key', 'wc_shipping_dpd_baltic_db_version', 'dpd_request_order_nr', 'dpd_baltic_flash_notices', 'dpd_logging_mode', 'dpd_cod_fee', 'dpd_cod_fee_percentage');

