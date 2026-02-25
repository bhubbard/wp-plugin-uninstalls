<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sd_lar_account_activated');
delete_site_option('sd_lar_account_activated');
delete_option('sd_lar_api_dev');
delete_site_option('sd_lar_api_dev');
delete_option('sd_lar_api_token_dev');
delete_site_option('sd_lar_api_token_dev');
delete_option('sd_lar_api_token_prod');
delete_site_option('sd_lar_api_token_prod');
delete_option('sd_lar_settings_updated_order_status');
delete_site_option('sd_lar_settings_updated_order_status');
delete_option('sd_lar_settings_use_boxes');
delete_site_option('sd_lar_settings_use_boxes');
delete_option('sd_lar_settings_signature');
delete_site_option('sd_lar_settings_signature');
delete_option('sd_lar_settings_free_shipping_value');
delete_site_option('sd_lar_settings_free_shipping_value');
delete_option('sd_lar_settings_cheapest_carrier');
delete_site_option('sd_lar_settings_cheapest_carrier');
delete_option('sd_lar_settings_delivery_date');
delete_site_option('sd_lar_settings_delivery_date');
delete_option('sd_lar_api_key_dev');
delete_site_option('sd_lar_api_key_dev');
delete_option('sd_lar_api_key_prod');
delete_site_option('sd_lar_api_key_prod');
delete_option('sd_lar_api_url');
delete_site_option('sd_lar_api_url');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('sd_lar_settings_boxes');
delete_site_option('sd_lar_settings_boxes');
delete_option('sd_lar_settings_phone_number');
delete_site_option('sd_lar_settings_phone_number');
delete_option('sd_lar_settings_display_order_carrier');
delete_site_option('sd_lar_settings_display_order_carrier');
delete_option('sd_lar_settings_carriers_list');
delete_site_option('sd_lar_settings_carriers_list');
delete_option('sd_lar_client_url');
delete_site_option('sd_lar_client_url');
delete_option('sd_lar_settings_shipment_value');
delete_site_option('sd_lar_settings_shipment_value');
delete_option('sd_lar_settings_predefined_package');
delete_site_option('sd_lar_settings_predefined_package');
delete_option('sd_lar_settings_package_width');
delete_site_option('sd_lar_settings_package_width');
delete_option('sd_lar_settings_package_length');
delete_site_option('sd_lar_settings_package_length');
delete_option('sd_lar_settings_package_height');
delete_site_option('sd_lar_settings_package_height');
delete_option('sd_lar_settings_package_weight');
delete_site_option('sd_lar_settings_package_weight');
delete_option('sd_lar_settings_class_list_type');
delete_site_option('sd_lar_settings_class_list_type');
delete_option('sd_lar_settings_class_list_allow');
delete_site_option('sd_lar_settings_class_list_allow');
delete_option('sd_lar_settings_class_list_deny');
delete_site_option('sd_lar_settings_class_list_deny');
delete_option('lar_api_dev');
delete_site_option('lar_api_dev');
delete_option('lar_api_token_dev');
delete_site_option('lar_api_token_dev');
delete_option('lar_api_token_prod');
delete_site_option('lar_api_token_prod');
delete_option('lar_account_activated');
delete_site_option('lar_account_activated');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sd_lar_ncv' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sd_lar_ncv' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sd_lar_ncv' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sd_lar_ncv' ) );

