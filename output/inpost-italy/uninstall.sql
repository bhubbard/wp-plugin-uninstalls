-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('inpost_italy_do_activation_redirect', 'easypack_organization_id_italy', 'easypack_token_italy', 'woocommerce_email_footer_text', 'woocommerce_custom_orders_table_enabled', 'easypack_italy_api_environment', 'inpost_italy_organisation', 'inpost_italy_api_limit_connection', 'easypack_italy_custom_button_css', 'easypack_italy_custom_css', 'easypack_italy_map_debug', 'easypack_italy_cart_limit', 'inpost_italy_api_login_error', 'easypack_italy_label_format', 'easypack_returns_page', 'easypack_italy_over_weight', 'easypack_api_error_login', 'easypack_italy_default_package_size', 'easypack_italy_send_tracking', 'easypack_default_machine_id', 'easypack_italy_default_send_method', 'easypack_fast_return', 'easypack_italy_flow_type', 'easypack_italy_sender_company_name', 'easypack_italy_sender_email', 'easypack_italy_sender_phone', 'easypack_italy_sender_city', 'easypack_italy_sender_post_code', 'easypack_italy_sender_street', 'easypack_italy_sender_building_no', 'easypack_italy_pickup_city', 'easypack_italy_pickup_post_code', 'easypack_italy_pickup_street', 'easypack_italy_pickup_building_no', 'easypack_insurance_amount_default', 'inpost_italy_organisation_global');
DELETE FROM wp_options WHERE option_name LIKE '%_rates';
DELETE FROM wp_options WHERE option_name LIKE '%_dpoint';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_easypack_status', '_easypack_parcel_tracking', '_shipx_shipment_object', '_parcel_machine_desc', '_parcel_machine_id', 'inpost_italy_shipping_methods_allowed', 'inpost_italy_parcel_dimensions', '_easypack_parcels', '_easypack_reference_number', '_easypack_parcel_create_args', '_easypack_inpost_id', '_billing_phone', '_dispath_order');
DELETE FROM wp_usermeta WHERE meta_key IN ('_easypack_status', '_easypack_parcel_tracking', '_shipx_shipment_object', '_parcel_machine_desc', '_parcel_machine_id', 'inpost_italy_shipping_methods_allowed', 'inpost_italy_parcel_dimensions', '_easypack_parcels', '_easypack_reference_number', '_easypack_parcel_create_args', '_easypack_inpost_id', '_billing_phone', '_dispath_order');
DELETE FROM wp_termmeta WHERE meta_key IN ('_easypack_status', '_easypack_parcel_tracking', '_shipx_shipment_object', '_parcel_machine_desc', '_parcel_machine_id', 'inpost_italy_shipping_methods_allowed', 'inpost_italy_parcel_dimensions', '_easypack_parcels', '_easypack_reference_number', '_easypack_parcel_create_args', '_easypack_inpost_id', '_billing_phone', '_dispath_order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_easypack_status', '_easypack_parcel_tracking', '_shipx_shipment_object', '_parcel_machine_desc', '_parcel_machine_id', 'inpost_italy_shipping_methods_allowed', 'inpost_italy_parcel_dimensions', '_easypack_parcels', '_easypack_reference_number', '_easypack_parcel_create_args', '_easypack_inpost_id', '_billing_phone', '_dispath_order');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_parcel_dimensions';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_parcel_dimensions';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_parcel_dimensions';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_parcel_dimensions';

