<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('coopcycle_free_shipping');
delete_site_option('coopcycle_free_shipping');
delete_option('coopcycle_app_name');
delete_site_option('coopcycle_app_name');
delete_option('coopcycle_base_url');
delete_site_option('coopcycle_base_url');
delete_option('coopcycle_api_key');
delete_site_option('coopcycle_api_key');
delete_option('coopcycle_api_secret');
delete_site_option('coopcycle_api_secret');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_phone' ) );

