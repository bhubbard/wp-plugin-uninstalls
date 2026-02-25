<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alsendo_connect_apaczka_service_structure_timestamp');
delete_site_option('alsendo_connect_apaczka_service_structure_timestamp');
delete_option('alsendo_connect_apaczka_service_structure');
delete_site_option('alsendo_connect_apaczka_service_structure');
delete_option('alsendo_connect_zaslat_address_book_timestamp');
delete_site_option('alsendo_connect_zaslat_address_book_timestamp');
delete_option('alsendo_connect_zaslat_address_book');
delete_site_option('alsendo_connect_zaslat_address_book');
delete_option('alsendo_connect_ecolet_service_structure_timestamp');
delete_site_option('alsendo_connect_ecolet_service_structure_timestamp');
delete_option('alsendo_connect_ecolet_service_structure');
delete_site_option('alsendo_connect_ecolet_service_structure');
delete_option('alsendo_connect_ecolet_not_connected');
delete_site_option('alsendo_connect_ecolet_not_connected');
delete_option('apaczka_pl_api_returned_error');
delete_site_option('apaczka_pl_api_returned_error');
delete_option('alsendo_connect_settings_general_ecolet_client_id');
delete_site_option('alsendo_connect_settings_general_ecolet_client_id');
delete_option('alsendo_connect_settings_general_ecolet_app_secret');
delete_site_option('alsendo_connect_settings_general_ecolet_app_secret');
delete_option('alsendo_connect_ecolet_token');
delete_site_option('alsendo_connect_ecolet_token');
delete_option('alsendo_connect_ecolet_refresh_token');
delete_site_option('alsendo_connect_ecolet_refresh_token');
delete_option('alsendo_connect_ecolet_token_expiration');
delete_site_option('alsendo_connect_ecolet_token_expiration');
delete_option('alsendo_connect_settings_general_ecolet_email');
delete_site_option('alsendo_connect_settings_general_ecolet_email');
delete_option('alsendo_connect_settings_general_ecolet_password');
delete_site_option('alsendo_connect_settings_general_ecolet_password');
delete_option('alsendo_connect_settings_general_ecolet_api_type');
delete_site_option('alsendo_connect_settings_general_ecolet_api_type');
delete_option('alsendo_oauth_connection_timeout');
delete_site_option('alsendo_oauth_connection_timeout');
delete_option('alsendo_connect_settings_general_select_sender_template');
delete_site_option('alsendo_connect_settings_general_select_sender_template');
delete_option('alsendo_connect_settings_general_select_package_template');
delete_site_option('alsendo_connect_settings_general_select_package_template');
delete_option('alsendo_connect_settings_general_zaslat_api_key');
delete_site_option('alsendo_connect_settings_general_zaslat_api_key');
delete_option('alsendo_connect_settings_general_zaslat_address_id');
delete_site_option('alsendo_connect_settings_general_zaslat_address_id');
delete_option('alsendo_connect_settings_general_global_api_type');
delete_site_option('alsendo_connect_settings_general_global_api_type');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_custom_orders_table_enabled');
delete_site_option('woocommerce_custom_orders_table_enabled');
delete_option('alsendo_connect_settings_general_dispath_point_gls');
delete_site_option('alsendo_connect_settings_general_dispath_point_gls');
delete_option('alsendo_connect_settings_general_dispath_point_sameday');
delete_site_option('alsendo_connect_settings_general_dispath_point_sameday');
delete_option('alsendo_connect_settings_general_dispath_point_dpd');
delete_site_option('alsendo_connect_settings_general_dispath_point_dpd');
delete_option('alsendo_connect_settings_general_dispath_point_cargus');
delete_site_option('alsendo_connect_settings_general_dispath_point_cargus');
delete_option('alsendo_connect_settings_general_dispath_point_fan_courier');
delete_site_option('alsendo_connect_settings_general_dispath_point_fan_courier');
delete_option('alsendo_connect_settings_general_zaslat_api_type');
delete_site_option('alsendo_connect_settings_general_zaslat_api_type');
delete_option('alsendo_connect_settings_general_package_length');
delete_site_option('alsendo_connect_settings_general_package_length');
delete_option('alsendo_connect_settings_general_package_width');
delete_site_option('alsendo_connect_settings_general_package_width');
delete_option('alsendo_connect_settings_general_package_height');
delete_site_option('alsendo_connect_settings_general_package_height');
delete_option('alsendo_connect_settings_general_package_weight');
delete_site_option('alsendo_connect_settings_general_package_weight');
delete_option('alsendo_connect_settings_general_dispath_point_inpost');
delete_site_option('alsendo_connect_settings_general_dispath_point_inpost');
delete_option('alsendo_connect_settings_general_dispath_point_kurier48');
delete_site_option('alsendo_connect_settings_general_dispath_point_kurier48');
delete_option('alsendo_connect_settings_general_dispath_point_ups');
delete_site_option('alsendo_connect_settings_general_dispath_point_ups');
delete_option('alsendo_connect_settings_general_sender_country');
delete_site_option('alsendo_connect_settings_general_sender_country');

