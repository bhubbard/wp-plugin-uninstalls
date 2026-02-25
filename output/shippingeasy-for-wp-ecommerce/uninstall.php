<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shippingeasy_rate_settings_errors');
delete_site_option('shippingeasy_rate_settings_errors');
delete_option('base_country');
delete_site_option('base_country');
delete_option('base_city');
delete_site_option('base_city');
delete_option('base_zipcode');
delete_site_option('base_zipcode');
delete_option('shippingeasy_rate_settings');
delete_site_option('shippingeasy_rate_settings');
delete_option('shippingeasy_main_settings');
delete_site_option('shippingeasy_main_settings');
delete_option('shippingeasy_generated_apikey');
delete_site_option('shippingeasy_generated_apikey');
delete_option('shippingeasy_available_services');
delete_site_option('shippingeasy_available_services');
delete_option('currency_type');
delete_site_option('currency_type');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpsc_product_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpsc_product_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpsc_product_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpsc_product_metadata' ) );

