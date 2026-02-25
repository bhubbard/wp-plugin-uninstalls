<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ruvuv-customcss');
delete_site_option('ruvuv-customcss');
delete_option('ruvuv-background-color-changing');
delete_site_option('ruvuv-background-color-changing');
delete_option('ruvuv-sticky');
delete_site_option('ruvuv-sticky');
delete_option('ruvuv-tooltip');
delete_site_option('ruvuv-tooltip');
delete_option('ruvuv-schedule');
delete_site_option('ruvuv-schedule');
delete_option('ruvuv-particle');
delete_site_option('ruvuv-particle');
delete_option('ruvuv-image-moving');
delete_site_option('ruvuv-image-moving');
delete_option('ruvuv-media-slider');
delete_site_option('ruvuv-media-slider');
delete_option('ruvuv-relax-parallax');
delete_site_option('ruvuv-relax-parallax');
delete_option('ruvuv-column-order');
delete_site_option('ruvuv-column-order');
delete_option('ruvuv-heading');
delete_site_option('ruvuv-heading');
delete_option('ruvuv-section-link');
delete_site_option('ruvuv-section-link');
delete_option('ruvuv-max-width');
delete_site_option('ruvuv-max-width');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ruvuv-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

