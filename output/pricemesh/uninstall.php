<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pricemesh_option_secret');
delete_site_option('pricemesh_option_secret');
delete_option('pricemesh_option_token');
delete_site_option('pricemesh_option_token');
delete_option('pricemesh_option_country');
delete_site_option('pricemesh_option_country');
delete_option('pricemesh_option_initial_items');
delete_site_option('pricemesh_option_initial_items');
delete_option('pricemesh_option_disclaimer');
delete_site_option('pricemesh_option_disclaimer');
delete_option('pricemesh_option_stock');
delete_site_option('pricemesh_option_stock');
delete_option('pricemesh_option_duplicates');
delete_site_option('pricemesh_option_duplicates');
delete_option('pricemesh_option_display');
delete_site_option('pricemesh_option_display');
delete_option('pricemesh_option_stylesheet');
delete_site_option('pricemesh_option_stylesheet');
delete_option('pricemesh_option_theme');
delete_site_option('pricemesh_option_theme');
delete_option('pricemesh_option_debug');
delete_site_option('pricemesh_option_debug');
delete_option('pricemesh_option_title');
delete_site_option('pricemesh_option_title');
delete_option('pricemesh_option_name');
delete_site_option('pricemesh_option_name');
delete_option('pricemesh_option_link_all');
delete_site_option('pricemesh_option_link_all');
delete_option('pricemesh_option_link_text');
delete_site_option('pricemesh_option_link_text');
delete_option('pricemesh_option_wp_robot_integration');
delete_site_option('pricemesh_option_wp_robot_integration');
delete_option('pricemesh_option_woocommerce_integration');
delete_site_option('pricemesh_option_woocommerce_integration');
delete_option('pricemesh_option_custom_post_types');
delete_site_option('pricemesh_option_custom_post_types');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_pricemesh_pids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_pricemesh_pids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_pricemesh_pids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_pricemesh_pids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_pricemesh_wp_robot_pids_added' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_pricemesh_wp_robot_pids_added' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_pricemesh_wp_robot_pids_added' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_pricemesh_wp_robot_pids_added' ) );

