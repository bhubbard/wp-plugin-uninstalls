<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aftersalesprogr_api_token');
delete_site_option('aftersalesprogr_api_token');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('woocommerce_Aftersalespro_ShippingMethod_settings');
delete_site_option('woocommerce_Aftersalespro_ShippingMethod_settings');
delete_option('aftersalesprogr_trackingwidget_status');
delete_site_option('aftersalesprogr_trackingwidget_status');
delete_option('aftersalesprogr_trackingwidget_uuid');
delete_site_option('aftersalesprogr_trackingwidget_uuid');
delete_option('aftersalesprogr_order_data_mapper');
delete_site_option('aftersalesprogr_order_data_mapper');
delete_option('aftersalesprogr_product_mapper');
delete_site_option('aftersalesprogr_product_mapper');
delete_option('woocommerce_custom_orders_table_enabled');
delete_site_option('woocommerce_custom_orders_table_enabled');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'acs_pp_point' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'acs_pp_point' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'acs_pp_point' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'acs_pp_point' ) );

