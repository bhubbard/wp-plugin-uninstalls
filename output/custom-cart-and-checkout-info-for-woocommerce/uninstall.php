<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('alg_wc_custom_cart_info_item_enabled');
delete_site_option('alg_wc_custom_cart_info_item_enabled');
delete_option('alg_wc_custom_cart_info_enabled');
delete_site_option('alg_wc_custom_cart_info_enabled');
delete_option('alg_wc_custom_cart_info_item_before');
delete_site_option('alg_wc_custom_cart_info_item_before');
delete_option('alg_wc_custom_cart_info_item_after');
delete_site_option('alg_wc_custom_cart_info_item_after');
delete_option('alg_wc_custom_cart_info_content');
delete_site_option('alg_wc_custom_cart_info_content');
delete_option('alg_wc_custom_cart_info_hook');
delete_site_option('alg_wc_custom_cart_info_hook');
delete_option('alg_wc_custom_cart_info_priority');
delete_site_option('alg_wc_custom_cart_info_priority');
delete_option('alg_wc_custom_cart_info_total_number');
delete_site_option('alg_wc_custom_cart_info_total_number');
delete_option('alg_wc_custom_cart_info_version');
delete_site_option('alg_wc_custom_cart_info_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'total_sales' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'total_sales' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'total_sales' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'total_sales' ) );

