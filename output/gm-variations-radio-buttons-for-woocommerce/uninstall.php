<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gmrbw_enable');
delete_site_option('gmrbw_enable');
delete_option('gmrbw_layout');
delete_site_option('gmrbw_layout');
delete_option('gmrbw_stock_availability');
delete_site_option('gmrbw_stock_availability');
delete_option('gmrbw_price');
delete_site_option('gmrbw_price');
delete_option('gmrbw_product_title');
delete_site_option('gmrbw_product_title');
delete_option('gmrbw_showimg');
delete_site_option('gmrbw_showimg');
delete_option('gmrbw_showdesc');
delete_site_option('gmrbw_showdesc');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_gmrbw_variation_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_gmrbw_variation_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_gmrbw_variation_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_gmrbw_variation_name' ) );

