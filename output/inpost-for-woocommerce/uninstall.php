<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');
delete_option('easypack_debug_mode');
delete_site_option('easypack_debug_mode');
delete_option('easypack_api_environment');
delete_site_option('easypack_api_environment');
delete_option('inpost_pl_organisation_services');
delete_site_option('inpost_pl_organisation_services');
delete_option('inpost_pl_last_time_update_services');
delete_site_option('inpost_pl_last_time_update_services');
delete_option('easypack_debug_mode_enqueue_scripts');
delete_site_option('easypack_debug_mode_enqueue_scripts');
delete_option('easypack_js_map_button');
delete_site_option('easypack_js_map_button');
delete_option('easypack_geowidget_sandbox_token');
delete_site_option('easypack_geowidget_sandbox_token');
delete_option('easypack_geowidget_production_token');
delete_site_option('easypack_geowidget_production_token');
delete_option('woocommerce_custom_orders_table_enabled');
delete_site_option('woocommerce_custom_orders_table_enabled');
delete_option('easypack_courier_tmplts_dmtemplates');
delete_site_option('easypack_courier_tmplts_dmtemplates');
delete_option('easypack_organization_id');
delete_site_option('easypack_organization_id');
delete_option('easypack_token');
delete_site_option('easypack_token');
delete_option('inpost_pl_api_returned_error');
delete_site_option('inpost_pl_api_returned_error');
delete_option('easypack_create_shipment_automatically');
delete_site_option('easypack_create_shipment_automatically');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('easypack_enable_webhooks');
delete_site_option('easypack_enable_webhooks');
delete_option('easypack_add_order_note');
delete_site_option('easypack_add_order_note');
delete_option('easypack_cache_machines');
delete_site_option('easypack_cache_machines');
delete_option('easypack_cache_machines_options');
delete_site_option('easypack_cache_machines_options');
delete_option('easypack_cache_machines_cod_options');
delete_site_option('easypack_cache_machines_cod_options');
delete_option('easypack_cache_machines_time');
delete_site_option('easypack_cache_machines_time');
delete_option('easypack_api_login_error');
delete_site_option('easypack_api_login_error');
delete_option('easypack_label_format');
delete_site_option('easypack_label_format');
delete_option('easypack_returns_page');
delete_site_option('easypack_returns_page');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_rates' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('easypack_custom_button_css');
delete_site_option('easypack_custom_button_css');
delete_option('easypack_courier_tmplts_dmtemplate_selected');
delete_site_option('easypack_courier_tmplts_dmtemplate_selected');
delete_option('easypack_set_order_completed');
delete_site_option('easypack_set_order_completed');
delete_option('easypack_default_package_size');
delete_site_option('easypack_default_package_size');
delete_option('easypack_insurance_amount_mode');
delete_site_option('easypack_insurance_amount_mode');
delete_option('easypack_insurance_amount_default');
delete_site_option('easypack_insurance_amount_default');
delete_option('easypack_default_send_method');
delete_site_option('easypack_default_send_method');
delete_option('easypack_default_package_size_c2c');
delete_site_option('easypack_default_package_size_c2c');
delete_option('easypack_set_default_courier_dimensions');
delete_site_option('easypack_set_default_courier_dimensions');
delete_option('easypack_default_courier_dimensions');
delete_site_option('easypack_default_courier_dimensions');
delete_option('easypack_change_order_status_by_webhook');
delete_site_option('easypack_change_order_status_by_webhook');
delete_option('easypack_delivery_notice');
delete_site_option('easypack_delivery_notice');
delete_option('easypack_enable_for_all_esmartmix');
delete_site_option('easypack_enable_for_all_esmartmix');
delete_option('easypack_enable_for_all_products');
delete_site_option('easypack_enable_for_all_products');
delete_option('easypack_set_major_method');
delete_site_option('easypack_set_major_method');
delete_option('easypack_over_weight');
delete_site_option('easypack_over_weight');
delete_option('easypack_api_error_login');
delete_site_option('easypack_api_error_login');
delete_option('easypack_sender_first_name');
delete_site_option('easypack_sender_first_name');
delete_option('easypack_sender_last_name');
delete_site_option('easypack_sender_last_name');
delete_option('easypack_sender_company_name');
delete_site_option('easypack_sender_company_name');
delete_option('easypack_sender_phone');
delete_site_option('easypack_sender_phone');
delete_option('easypack_sender_email');
delete_site_option('easypack_sender_email');
delete_option('easypack_default_machine_id');
delete_site_option('easypack_default_machine_id');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_dpoint' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_dpoint_selected' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_dmtemplates' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_dmtemplate_selected' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('easypack_button_output');
delete_site_option('easypack_button_output');
delete_option('easypack_fast_return');
delete_site_option('easypack_fast_return');
delete_option('easypack_dispatch_orders');
delete_site_option('easypack_dispatch_orders');
delete_option('inpost_pl_organisation_services_global');
delete_site_option('inpost_pl_organisation_services_global');
delete_option('easypack_sender_city');
delete_site_option('easypack_sender_city');
delete_option('easypack_sender_street');
delete_site_option('easypack_sender_street');
delete_option('easypack_sender_building_no');
delete_site_option('easypack_sender_building_no');
delete_option('easypack_sender_post_code');
delete_site_option('easypack_sender_post_code');

// Clear Cron Jobs
wp_clear_scheduled_hook('send_shipment_automatically');
wp_clear_scheduled_hook('send_tracking_numbers_email');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fs_easypack_method_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fs_easypack_method_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fs_easypack_method_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fs_easypack_method_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_parcel_machine_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_parcel_machine_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_parcel_machine_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_parcel_machine_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_easypack_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_easypack_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_easypack_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_easypack_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_easypack_parcel_tracking' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_easypack_parcel_tracking' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_easypack_parcel_tracking' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_easypack_parcel_tracking' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'woo_inpost_coupon_shipping_methods_allowed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'woo_inpost_coupon_shipping_methods_allowed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'woo_inpost_coupon_shipping_methods_allowed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'woo_inpost_coupon_shipping_methods_allowed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'woo_inpost_parcel_dimensions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'woo_inpost_parcel_dimensions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'woo_inpost_parcel_dimensions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'woo_inpost_parcel_dimensions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_easypack_additional_packages' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_easypack_additional_packages' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_easypack_additional_packages' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_easypack_additional_packages' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_parcel_dimensions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_parcel_dimensions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_parcel_dimensions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_parcel_dimensions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_reference_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_reference_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_reference_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_reference_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_easypack_parcels' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_easypack_parcels' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_easypack_parcels' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_easypack_parcels' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_dispath_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_dispath_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_dispath_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_dispath_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_shipx_shipment_object' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_shipx_shipment_object' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_shipx_shipment_object' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_shipx_shipment_object' ) );

