<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('coderockz_woo_delivery_option_delivery_settings');
delete_site_option('coderockz_woo_delivery_option_delivery_settings');
delete_option('coderockz_woo_delivery_date_settings');
delete_site_option('coderockz_woo_delivery_date_settings');
delete_option('coderockz_woo_delivery_pickup_date_settings');
delete_site_option('coderockz_woo_delivery_pickup_date_settings');
delete_option('coderockz_woo_delivery_time_settings');
delete_site_option('coderockz_woo_delivery_time_settings');
delete_option('coderockz_woo_delivery_pickup_settings');
delete_site_option('coderockz_woo_delivery_pickup_settings');
delete_option('coderockz_woo_delivery_localization_settings');
delete_site_option('coderockz_woo_delivery_localization_settings');
delete_option('coderockz_woo_delivery_other_settings');
delete_site_option('coderockz_woo_delivery_other_settings');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('coderockz_woo_delivery_review_notice');
delete_site_option('coderockz_woo_delivery_review_notice');
delete_option('coderockz-woo-delivery-activation-time');
delete_site_option('coderockz-woo-delivery-activation-time');
delete_option('coderockz_woo_delivery_date_time_change');
delete_site_option('coderockz_woo_delivery_date_time_change');
delete_option('woocommerce_ship_to_destination');
delete_site_option('woocommerce_ship_to_destination');
delete_option('coderockz_woo_delivery_pickup_location_settings');
delete_site_option('coderockz_woo_delivery_pickup_location_settings');
delete_option('coderockz_woo_delivery_additional_field_settings');
delete_site_option('coderockz_woo_delivery_additional_field_settings');
delete_option('et_divi');
delete_site_option('et_divi');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'delivery_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'delivery_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'delivery_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'delivery_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pickup_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pickup_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pickup_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pickup_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'delivery_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'delivery_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'delivery_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'delivery_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pickup_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pickup_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pickup_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pickup_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'delivery_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'delivery_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'delivery_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'delivery_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_virtual' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_virtual' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_virtual' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_virtual' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_downloadable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_downloadable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_downloadable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_downloadable' ) );

