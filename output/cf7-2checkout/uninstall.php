<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cf7_2checkout_mode');
delete_site_option('cf7_2checkout_mode');
delete_option('cf7_test_2checkout_sellerid');
delete_site_option('cf7_test_2checkout_sellerid');
delete_option('cf7_test_2checkout_privatekey');
delete_site_option('cf7_test_2checkout_privatekey');
delete_option('cf7_test_2checkout_publickey');
delete_site_option('cf7_test_2checkout_publickey');
delete_option('cf7_live_2checkout_sellerid');
delete_site_option('cf7_live_2checkout_sellerid');
delete_option('cf7_live_2checkout_privatekey');
delete_site_option('cf7_live_2checkout_privatekey');
delete_option('cf7_live_2checkout_publickey');
delete_site_option('cf7_live_2checkout_publickey');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cf7_2checkout_address_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cf7_2checkout_address_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cf7_2checkout_address_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cf7_2checkout_address_fields' ) );

