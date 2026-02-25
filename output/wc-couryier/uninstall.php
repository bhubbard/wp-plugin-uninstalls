<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tes_user');
delete_site_option('tes_user');
delete_option('couryier_account_no');
delete_site_option('couryier_account_no');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('woocommerce_store_address_2');
delete_site_option('woocommerce_store_address_2');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');

// Delete Transients
delete_transient('currency_rates');
delete_site_transient('currency_rates');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'awb_tracking_no' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'awb_tracking_no' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'awb_tracking_no' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'awb_tracking_no' ) );

