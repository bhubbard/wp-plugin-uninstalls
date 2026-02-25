<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('apaczka_woocommerce_SC_CACHE');
delete_site_option('apaczka_woocommerce_SC_CACHE');
delete_option('apaczka_woocommerce_SC_CACHE_TIMESTAMP');
delete_site_option('apaczka_woocommerce_SC_CACHE_TIMESTAMP');
delete_option('apaczka_pl_api_returned_error');
delete_site_option('apaczka_pl_api_returned_error');
delete_option('woocommerce_custom_orders_table_enabled');
delete_site_option('woocommerce_custom_orders_table_enabled');
delete_option('apaczka_countries_cache');
delete_site_option('apaczka_countries_cache');
delete_option('apaczka_woocommerce_settings_general_apaczka_map_debug_mode');
delete_site_option('apaczka_woocommerce_settings_general_apaczka_map_debug_mode');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('apaczka_woocommerce_settings_general_dispath_point_inpost');
delete_site_option('apaczka_woocommerce_settings_general_dispath_point_inpost');
delete_option('apaczka_woocommerce_settings_general_dispath_point_kurier48');
delete_site_option('apaczka_woocommerce_settings_general_dispath_point_kurier48');
delete_option('apaczka_woocommerce_settings_general_dispath_point_ups');
delete_site_option('apaczka_woocommerce_settings_general_dispath_point_ups');
delete_option('apaczka_woocommerce_settings_general_dispath_point_dpd');
delete_site_option('apaczka_woocommerce_settings_general_dispath_point_dpd');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_apaczka_last_order_object' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_apaczka_last_order_object' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_apaczka_last_order_object' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_apaczka_last_order_object' ) );

