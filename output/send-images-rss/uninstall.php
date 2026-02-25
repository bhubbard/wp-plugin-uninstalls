<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sendimagesrss_image_size');
delete_site_option('sendimagesrss_image_size');
delete_option('displayfeaturedimagegenesis');
delete_site_option('displayfeaturedimagegenesis');
delete_option('itsec_ban_users');
delete_site_option('itsec_ban_users');
delete_option('sendimagesrss');
delete_site_option('sendimagesrss');
delete_option('sendimagesrss_simplify_feed');
delete_site_option('sendimagesrss_simplify_feed');
delete_option('sendimagesrss_alternate_feed');
delete_site_option('sendimagesrss_alternate_feed');
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

