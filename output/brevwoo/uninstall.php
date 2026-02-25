<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('brevwoo_brevo_api_key');
delete_site_option('brevwoo_brevo_api_key');
delete_option('brevwoo_default_lists');
delete_site_option('brevwoo_default_lists');
delete_option('brevwoo_order_status');
delete_site_option('brevwoo_order_status');
delete_option('brevwoo_debug_logging');
delete_site_option('brevwoo_debug_logging');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_brevwoo_product_lists' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_brevwoo_product_lists' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_brevwoo_product_lists' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_brevwoo_product_lists' ) );

