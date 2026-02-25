-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sd_lar_account_activated', 'sd_lar_api_dev', 'sd_lar_api_token_dev', 'sd_lar_api_token_prod', 'sd_lar_settings_updated_order_status', 'sd_lar_settings_use_boxes', 'sd_lar_settings_signature', 'sd_lar_settings_free_shipping_value', 'sd_lar_settings_cheapest_carrier', 'sd_lar_settings_delivery_date', 'sd_lar_api_key_dev', 'sd_lar_api_key_prod', 'sd_lar_api_url', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'sd_lar_settings_boxes', 'sd_lar_settings_phone_number', 'sd_lar_settings_display_order_carrier', 'sd_lar_settings_carriers_list', 'sd_lar_client_url', 'sd_lar_settings_shipment_value', 'sd_lar_settings_predefined_package', 'sd_lar_settings_package_width', 'sd_lar_settings_package_length', 'sd_lar_settings_package_height', 'sd_lar_settings_package_weight', 'sd_lar_settings_class_list_type', 'sd_lar_settings_class_list_allow', 'sd_lar_settings_class_list_deny', 'lar_api_dev', 'lar_api_token_dev', 'lar_api_token_prod', 'lar_account_activated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sd_lar_ncv');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sd_lar_ncv');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sd_lar_ncv');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sd_lar_ncv');

