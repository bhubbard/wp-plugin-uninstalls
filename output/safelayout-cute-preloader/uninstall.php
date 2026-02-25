<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('safelayout_preloader_options');
delete_site_option('safelayout_preloader_options');
delete_option('safelayout_preloader_options_meta');
delete_site_option('safelayout_preloader_options_meta');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'safelayout_preloader_special_post%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('safelayout_preloader_options_upgrade');
delete_site_option('safelayout_preloader_options_upgrade');
delete_option('safelayout_preloader_options_rate');
delete_site_option('safelayout_preloader_options_rate');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'safelayout_preloader_shortcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'safelayout_preloader_shortcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'safelayout_preloader_shortcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'safelayout_preloader_shortcode' ) );

