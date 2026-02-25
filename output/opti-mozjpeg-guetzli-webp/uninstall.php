<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpmjgu_batch_optimization_intensive_resources_consumption_mode');
delete_site_option('wpmjgu_batch_optimization_intensive_resources_consumption_mode');
delete_option('wpmjgu_batch_optimization_max_simultaneous_processes');
delete_site_option('wpmjgu_batch_optimization_max_simultaneous_processes');
delete_option('wpmjgu_mode');
delete_site_option('wpmjgu_mode');
delete_option('wpmjgu_path_filter');
delete_site_option('wpmjgu_path_filter');
delete_option('wpmjgu_jpeg_encoder_location');
delete_site_option('wpmjgu_jpeg_encoder_location');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_errorvalue' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpmjgu_plugin_working_directory');
delete_site_option('wpmjgu_plugin_working_directory');
delete_option('wpmjgu_default_jpeg_quality');
delete_site_option('wpmjgu_default_jpeg_quality');
delete_option('wpmjgu_jpeg_compression_min_benefit');
delete_site_option('wpmjgu_jpeg_compression_min_benefit');
delete_option('wpmjgu_ssh_server');
delete_site_option('wpmjgu_ssh_server');
delete_option('wpmjgu_ssh_port');
delete_site_option('wpmjgu_ssh_port');
delete_option('wpmjgu_ssh_username');
delete_site_option('wpmjgu_ssh_username');
delete_option('wpmjgu_ssh_password');
delete_site_option('wpmjgu_ssh_password');
delete_option('wpmjgu_ssh_working_directory');
delete_site_option('wpmjgu_ssh_working_directory');
delete_option('wpmjgu_mozjpeg_encoder_directory');
delete_site_option('wpmjgu_mozjpeg_encoder_directory');
delete_option('wpmjgu_guetzli_encoder_directory');
delete_site_option('wpmjgu_guetzli_encoder_directory');
delete_option('wpmjgu_webp_encoder_directory');
delete_site_option('wpmjgu_webp_encoder_directory');
delete_option('wpmjgu_settings_validation_error');
delete_site_option('wpmjgu_settings_validation_error');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpmjgu_webp_duplicate' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpmjgu_webp_duplicate' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpmjgu_webp_duplicate' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpmjgu_webp_duplicate' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpmjgu_optimized' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpmjgu_optimized' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpmjgu_optimized' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpmjgu_optimized' ) );

