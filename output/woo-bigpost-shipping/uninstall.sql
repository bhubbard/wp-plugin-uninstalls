-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woobigpost-product-box_overwrite_settings', 'woobigpost_admin_footer_text_rated', 'woocommerce_enable_shipping_calc', 'woocommerce_woobigpost_settings', 'api_data', 'delivery_options_arr', 'shipping_price_round', 'delivery_options', 'data_of_delivery_type');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_locations', '_no_of_cartons', '_carton_items', 'order_consignment_number', 'bigpost_order_response', '_can_consolidated', '_shipping_type', '_use_admin_setting', '_authority_option', '_free_shipping', '_show_plugin', '_locality_id', 'order_job_id', '_shipping_city', '_shipping_postcode', '_shipping_state', 'bigpost_order_payload', 'order_Job_created', 'cis_payload');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_locations', '_no_of_cartons', '_carton_items', 'order_consignment_number', 'bigpost_order_response', '_can_consolidated', '_shipping_type', '_use_admin_setting', '_authority_option', '_free_shipping', '_show_plugin', '_locality_id', 'order_job_id', '_shipping_city', '_shipping_postcode', '_shipping_state', 'bigpost_order_payload', 'order_Job_created', 'cis_payload');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_locations', '_no_of_cartons', '_carton_items', 'order_consignment_number', 'bigpost_order_response', '_can_consolidated', '_shipping_type', '_use_admin_setting', '_authority_option', '_free_shipping', '_show_plugin', '_locality_id', 'order_job_id', '_shipping_city', '_shipping_postcode', '_shipping_state', 'bigpost_order_payload', 'order_Job_created', 'cis_payload');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_locations', '_no_of_cartons', '_carton_items', 'order_consignment_number', 'bigpost_order_response', '_can_consolidated', '_shipping_type', '_use_admin_setting', '_authority_option', '_free_shipping', '_show_plugin', '_locality_id', 'order_job_id', '_shipping_city', '_shipping_postcode', '_shipping_state', 'bigpost_order_payload', 'order_Job_created', 'cis_payload');

