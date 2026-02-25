<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpvivid_optimization_options');
delete_site_option('wpvivid_optimization_options');
delete_option('wpvivid_connect_key');
delete_site_option('wpvivid_connect_key');
delete_option('wpvivid_server_cache');
delete_site_option('wpvivid_server_cache');
delete_option('wpvivid_get_optimization_url');
delete_site_option('wpvivid_get_optimization_url');
delete_option('wpvivid_dashboard_info');
delete_site_option('wpvivid_dashboard_info');
delete_option('wpvivid_imgoptim_user');
delete_site_option('wpvivid_imgoptim_user');
delete_option('wpvivid_image_opt_task');
delete_site_option('wpvivid_image_opt_task');
delete_option('wpvivid_get_get_overview');
delete_site_option('wpvivid_get_get_overview');
delete_option('wpvivid_imgoptim_overview');
delete_site_option('wpvivid_imgoptim_overview');
delete_option('wpvivid_image_opt_task_cancel');
delete_site_option('wpvivid_image_opt_task_cancel');
delete_option('wpvivid_get_need_optimize_images');
delete_site_option('wpvivid_get_need_optimize_images');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_size_w' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_size_h' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_crop' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('medium_large_size_w');
delete_site_option('medium_large_size_w');
delete_option('medium_large_size_h');
delete_site_option('medium_large_size_h');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpvivid_image_optimize_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpvivid_image_optimize_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpvivid_image_optimize_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpvivid_image_optimize_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpvivid_backup_image_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpvivid_backup_image_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpvivid_backup_image_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpvivid_backup_image_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpvivid_image_og_pixel_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpvivid_image_og_pixel_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpvivid_image_og_pixel_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpvivid_image_og_pixel_meta' ) );

