<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('datalogics_token');
delete_site_option('datalogics_token');
delete_option('datalogics_shipping_auto_create_delivery');
delete_site_option('datalogics_shipping_auto_create_delivery');
delete_option('datalogics_shipping_order_status');
delete_site_option('datalogics_shipping_order_status');
delete_option('datalogics_shipping_method');
delete_site_option('datalogics_shipping_method');
delete_option('datalogics_shipping_locations');
delete_site_option('datalogics_shipping_locations');
delete_option('datalogics_platforms');
delete_site_option('datalogics_platforms');
delete_option('datalogics_myaccount_tracking_email');
delete_site_option('datalogics_myaccount_tracking_email');
delete_option('datalogics_myaccount_tracking');
delete_site_option('datalogics_myaccount_tracking');
delete_option('datalogics_shipping_options_enabled');
delete_site_option('datalogics_shipping_options_enabled');
delete_option('datalogics_shipping_options');
delete_site_option('datalogics_shipping_options');
delete_option('datalogics_view_option');
delete_site_option('datalogics_view_option');
delete_option('datalogics_google_key');
delete_site_option('datalogics_google_key');
delete_option('datalogics_cities_auto');
delete_site_option('datalogics_cities_auto');
delete_option('datalogics_ncode_auto');
delete_site_option('datalogics_ncode_auto');
delete_option('shipping_push_supplier');
delete_site_option('shipping_push_supplier');
delete_option('datalogics_myaccount_tracking_email_link');
delete_site_option('datalogics_myaccount_tracking_email_link');
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');

// Clear Cron Jobs
wp_clear_scheduled_hook('datalogics_update_locations_schedule');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'datalogics_shipping' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'datalogics_shipping' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'datalogics_shipping' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'datalogics_shipping' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'datalogics_shipment_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'datalogics_shipment_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'datalogics_shipment_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'datalogics_shipment_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'datalogics_n_code_platform_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'datalogics_n_code_platform_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'datalogics_n_code_platform_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'datalogics_n_code_platform_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'datalogics_n_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'datalogics_n_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'datalogics_n_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'datalogics_n_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'datalogics_shipping_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'datalogics_shipping_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'datalogics_shipping_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'datalogics_shipping_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'datalogics_test_one' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'datalogics_test_one' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'datalogics_test_one' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'datalogics_test_one' ) );

