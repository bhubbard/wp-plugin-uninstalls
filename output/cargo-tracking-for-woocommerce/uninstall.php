<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cargo_tracking_for_woocommerce');
delete_site_option('cargo_tracking_for_woocommerce');
delete_option('cargo_tracking_for_woocommerce_emailCheck');
delete_site_option('cargo_tracking_for_woocommerce_emailCheck');
delete_option('cargo_tracking_for_woocommerce_emailHeading');
delete_site_option('cargo_tracking_for_woocommerce_emailHeading');
delete_option('cargo_tracking_for_woocommerce_emailSubject');
delete_site_option('cargo_tracking_for_woocommerce_emailSubject');
delete_option('cargo_tracking_for_woocommerce_emailDescription');
delete_site_option('cargo_tracking_for_woocommerce_emailDescription');
delete_option('cargo_tracking_for_woocommerce_emailTemplates');
delete_site_option('cargo_tracking_for_woocommerce_emailTemplates');
delete_option('cargo_tracking_for_woocommerce_disablePluginStatus');
delete_site_option('cargo_tracking_for_woocommerce_disablePluginStatus');
delete_option('cargo_tracking_for_woocommerce_deletePluginData');
delete_site_option('cargo_tracking_for_woocommerce_deletePluginData');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cargo_tracking_for_woocommerce-data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cargo_tracking_for_woocommerce-data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cargo_tracking_for_woocommerce-data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cargo_tracking_for_woocommerce-data' ) );

