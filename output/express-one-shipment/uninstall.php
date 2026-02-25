<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('express_one_api_key');
delete_site_option('express_one_api_key');
delete_option('express_one_sender_name');
delete_site_option('express_one_sender_name');
delete_option('express_one_sender_country');
delete_site_option('express_one_sender_country');
delete_option('express_one_sender_zipcode');
delete_site_option('express_one_sender_zipcode');
delete_option('express_one_sender_city');
delete_site_option('express_one_sender_city');
delete_option('express_one_sender_street');
delete_site_option('express_one_sender_street');
delete_option('express_one_sender_telephone');
delete_site_option('express_one_sender_telephone');
delete_option('express_one_sender_fax');
delete_site_option('express_one_sender_fax');
delete_option('express_one_sender_gsm');
delete_site_option('express_one_sender_gsm');
delete_option('express_one_sender_email');
delete_site_option('express_one_sender_email');
delete_option('express_one_label_layout_id');
delete_site_option('express_one_label_layout_id');
delete_option('woocommerce_express_one_pickup_shipping_settings');
delete_site_option('woocommerce_express_one_pickup_shipping_settings');
delete_option('woocommerce_express_one_flat_shipping_settings');
delete_site_option('woocommerce_express_one_flat_shipping_settings');
delete_option('woocommerce_price_display_suffix');
delete_site_option('woocommerce_price_display_suffix');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_express_one_shipment_created_%', '_site_transient_express_one_shipment_created_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_express_one_shipment_error_%', '_site_transient_express_one_shipment_error_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_express_one_shipment_updated_%', '_site_transient_express_one_shipment_updated_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_bulk_labels_result_%', '_site_transient_bulk_labels_result_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'express_one_shipping_option' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'express_one_shipping_option' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'express_one_shipping_option' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'express_one_shipping_option' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_expressone_shipment_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_expressone_shipment_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_expressone_shipment_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_expressone_shipment_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_expressone_cargo_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_expressone_cargo_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_expressone_cargo_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_expressone_cargo_ids' ) );

