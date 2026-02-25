<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('repair_woocommerce_speed_options');
delete_site_option('repair_woocommerce_speed_options');
delete_option('repair_woocommerce_speed_custom_handles');
delete_site_option('repair_woocommerce_speed_custom_handles');

// Delete Transients
delete_transient('_repair_woocommerce_speed_do_redirect');
delete_site_transient('_repair_woocommerce_speed_do_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_repair_woo_custom_handles' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_repair_woo_custom_handles' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_repair_woo_custom_handles' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_repair_woo_custom_handles' ) );

