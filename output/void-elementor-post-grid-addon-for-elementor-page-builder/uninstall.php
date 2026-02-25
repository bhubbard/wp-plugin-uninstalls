<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('VOID_GRID_DATA_UPDATE');
delete_site_option('VOID_GRID_DATA_UPDATE');
delete_option('void_grid_elementor_post_grid_activation_time');
delete_site_option('void_grid_elementor_post_grid_activation_time');
delete_option('void_grid_active_info');
delete_site_option('void_grid_active_info');
delete_option('void_grid_spare_me');
delete_site_option('void_grid_spare_me');

// Delete Transients
delete_transient('void_grid_image_size');
delete_site_transient('void_grid_image_size');
delete_transient('void_categories');
delete_site_transient('void_categories');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );

