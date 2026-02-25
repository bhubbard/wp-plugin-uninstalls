<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_wps_constant_contact_woo_list_id');
delete_site_option('wc_wps_constant_contact_woo_list_id');
delete_option('wc_wps_constant_contact_woo_order_status');
delete_site_option('wc_wps_constant_contact_woo_order_status');
delete_option('wps_cc_woo_log');
delete_site_option('wps_cc_woo_log');
delete_option('wc_wps_constant_contact_woo_access_token');
delete_site_option('wc_wps_constant_contact_woo_access_token');
delete_option('wc_wps_constant_contact_woo_api_key');
delete_site_option('wc_wps_constant_contact_woo_api_key');
delete_option('wps_woo_order_expo_to_cc');
delete_site_option('wps_woo_order_expo_to_cc');
delete_option('wps_woo_order_expo_to_cc_ver');
delete_site_option('wps_woo_order_expo_to_cc_ver');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'constant_contact_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'constant_contact_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'constant_contact_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'constant_contact_id' ) );

