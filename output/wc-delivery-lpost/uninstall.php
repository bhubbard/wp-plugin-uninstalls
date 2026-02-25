<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lpost_wc_api_test');
delete_site_option('lpost_wc_api_test');
delete_option('lpost_wc_logging');
delete_site_option('lpost_wc_logging');
delete_option('lpost_wc_api_secret');
delete_site_option('lpost_wc_api_secret');
delete_option('lpost_wc_api_token');
delete_site_option('lpost_wc_api_token');
delete_option('lpost_wc_api_token_date');
delete_site_option('lpost_wc_api_token_date');
delete_option('lpost_wc_api_hash');
delete_site_option('lpost_wc_api_hash');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_lp_shipment_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_lp_shipment_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_lp_shipment_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_lp_shipment_id' ) );

