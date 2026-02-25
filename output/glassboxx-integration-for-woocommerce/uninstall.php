<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('glassboxx_wc_apibaseurl');
delete_site_option('glassboxx_wc_apibaseurl');
delete_option('glassboxx_wc_active');
delete_site_option('glassboxx_wc_active');
delete_option('glassboxx_ty_msg');
delete_site_option('glassboxx_ty_msg');
delete_option('glassboxx_wc_id');
delete_site_option('glassboxx_wc_id');
delete_option('glassboxx_wc_debug');
delete_site_option('glassboxx_wc_debug');
delete_option('woo_multi_currency_params');
delete_site_option('woo_multi_currency_params');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'gbx_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'gbx_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'gbx_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'gbx_sent' ) );

