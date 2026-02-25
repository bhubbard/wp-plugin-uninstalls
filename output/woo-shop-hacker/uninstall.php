<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woo_shop_hacker_apikey');
delete_site_option('woo_shop_hacker_apikey');
delete_option('woo_shop_hacker_apisecret');
delete_site_option('woo_shop_hacker_apisecret');
delete_option('woo_shop_hacker_merchantid');
delete_site_option('woo_shop_hacker_merchantid');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_shop_hacker_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_shop_hacker_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_shop_hacker_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_shop_hacker_sent' ) );

