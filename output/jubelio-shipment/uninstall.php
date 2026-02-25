<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jubelio_shipment_token');
delete_site_option('jubelio_shipment_token');
delete_option('woocommerce_jubelioshipment_settings');
delete_site_option('woocommerce_jubelioshipment_settings');
delete_option('jubelio_auth');
delete_site_option('jubelio_auth');
delete_option('jubelio_shipment_domain');
delete_site_option('jubelio_shipment_domain');
delete_option('woocommerce_shipping_debug_mode');
delete_site_option('woocommerce_shipping_debug_mode');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_jubelioshipment_13_settings');
delete_site_option('woocommerce_jubelioshipment_13_settings');

// Delete Transients
delete_transient('jubelio_shipment_token');
delete_site_transient('jubelio_shipment_token');
delete_transient('_jubelio_shipment_invalid_promotions');
delete_site_transient('_jubelio_shipment_invalid_promotions');
delete_transient('jubelio_shipment_promotion_usage');
delete_site_transient('jubelio_shipment_promotion_usage');
delete_transient('jubelio_shipment_multi_origin');
delete_site_transient('jubelio_shipment_multi_origin');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_latitude_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_latitude_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_latitude_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_latitude_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_longitude_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_longitude_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_longitude_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_longitude_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_jubelioshipment_awb_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_jubelioshipment_awb_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_jubelioshipment_awb_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_jubelioshipment_awb_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_jubelioshipment_label_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_jubelioshipment_label_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_jubelioshipment_label_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_jubelioshipment_label_data' ) );

