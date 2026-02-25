<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('overseas_express_api_key');
delete_site_option('overseas_express_api_key');
delete_option('overseas_express_sender_name');
delete_site_option('overseas_express_sender_name');
delete_option('overseas_express_sender_country');
delete_site_option('overseas_express_sender_country');
delete_option('overseas_express_sender_zipcode');
delete_site_option('overseas_express_sender_zipcode');
delete_option('overseas_express_sender_city');
delete_site_option('overseas_express_sender_city');
delete_option('overseas_express_sender_street');
delete_site_option('overseas_express_sender_street');
delete_option('overseas_express_sender_telephone');
delete_site_option('overseas_express_sender_telephone');
delete_option('overseas_express_sender_fax');
delete_site_option('overseas_express_sender_fax');
delete_option('overseas_express_sender_gsm');
delete_site_option('overseas_express_sender_gsm');
delete_option('overseas_express_sender_email');
delete_site_option('overseas_express_sender_email');
delete_option('overseas_express_label_layout_id');
delete_site_option('overseas_express_label_layout_id');
delete_option('woocommerce_overseas_express_pickup_shipping_settings');
delete_site_option('woocommerce_overseas_express_pickup_shipping_settings');
delete_option('woocommerce_overseas_express_flat_shipping_settings');
delete_site_option('woocommerce_overseas_express_flat_shipping_settings');
delete_option('woocommerce_price_display_suffix');
delete_site_option('woocommerce_price_display_suffix');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_bulk_labels_result_%', '_site_transient_bulk_labels_result_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'overseas_express_shipping_option' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'overseas_express_shipping_option' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'overseas_express_shipping_option' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'overseas_express_shipping_option' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_overseas_shipment_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_overseas_shipment_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_overseas_shipment_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_overseas_shipment_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_overseas_cargo_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_overseas_cargo_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_overseas_cargo_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_overseas_cargo_ids' ) );

