-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_email_footer_text', 'easypack_debug_mode', 'easypack_api_environment', 'inpost_pl_organisation_services', 'inpost_pl_last_time_update_services', 'easypack_debug_mode_enqueue_scripts', 'easypack_js_map_button', 'easypack_geowidget_sandbox_token', 'easypack_geowidget_production_token', 'woocommerce_custom_orders_table_enabled', 'easypack_courier_tmplts_dmtemplates', 'easypack_organization_id', 'easypack_token', 'inpost_pl_api_returned_error', 'easypack_create_shipment_automatically', 'easypack_enable_webhooks', 'easypack_add_order_note', 'easypack_cache_machines', 'easypack_cache_machines_options', 'easypack_cache_machines_cod_options', 'easypack_cache_machines_time', 'easypack_api_login_error', 'easypack_label_format', 'easypack_returns_page', 'active_sitewide_plugins', 'easypack_custom_button_css', 'easypack_courier_tmplts_dmtemplate_selected', 'easypack_set_order_completed', 'easypack_default_package_size', 'easypack_insurance_amount_mode', 'easypack_insurance_amount_default', 'easypack_default_send_method', 'easypack_default_package_size_c2c', 'easypack_set_default_courier_dimensions', 'easypack_default_courier_dimensions', 'easypack_change_order_status_by_webhook', 'easypack_delivery_notice', 'easypack_enable_for_all_esmartmix', 'easypack_enable_for_all_products', 'easypack_set_major_method', 'easypack_over_weight', 'easypack_api_error_login', 'easypack_sender_first_name', 'easypack_sender_last_name', 'easypack_sender_company_name', 'easypack_sender_phone', 'easypack_sender_email', 'easypack_default_machine_id', 'easypack_button_output', 'easypack_fast_return');
DELETE FROM wp_options WHERE option_name IN ('easypack_dispatch_orders', 'inpost_pl_organisation_services_global', 'easypack_sender_city', 'easypack_sender_street', 'easypack_sender_building_no', 'easypack_sender_post_code');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_rates';
DELETE FROM wp_options WHERE option_name LIKE '%_dpoint';
DELETE FROM wp_options WHERE option_name LIKE '%_dpoint_selected';
DELETE FROM wp_options WHERE option_name LIKE '%_dmtemplates';
DELETE FROM wp_options WHERE option_name LIKE '%_dmtemplate_selected';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fs_easypack_method_name', '_parcel_machine_id', '_easypack_status', '_easypack_parcel_tracking', 'woo_inpost_coupon_shipping_methods_allowed', 'woo_inpost_parcel_dimensions', '_easypack_additional_packages', '_billing_phone', '_reference_number', '_easypack_parcels', '_dispath_order', '_shipx_shipment_object');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fs_easypack_method_name', '_parcel_machine_id', '_easypack_status', '_easypack_parcel_tracking', 'woo_inpost_coupon_shipping_methods_allowed', 'woo_inpost_parcel_dimensions', '_easypack_additional_packages', '_billing_phone', '_reference_number', '_easypack_parcels', '_dispath_order', '_shipx_shipment_object');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fs_easypack_method_name', '_parcel_machine_id', '_easypack_status', '_easypack_parcel_tracking', 'woo_inpost_coupon_shipping_methods_allowed', 'woo_inpost_parcel_dimensions', '_easypack_additional_packages', '_billing_phone', '_reference_number', '_easypack_parcels', '_dispath_order', '_shipx_shipment_object');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fs_easypack_method_name', '_parcel_machine_id', '_easypack_status', '_easypack_parcel_tracking', 'woo_inpost_coupon_shipping_methods_allowed', 'woo_inpost_parcel_dimensions', '_easypack_additional_packages', '_billing_phone', '_reference_number', '_easypack_parcels', '_dispath_order', '_shipx_shipment_object');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_parcel_dimensions';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_parcel_dimensions';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_parcel_dimensions';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_parcel_dimensions';

