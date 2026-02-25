<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('posttile-transparency');
delete_site_option('posttile-transparency');
delete_option('category-key');
delete_site_option('category-key');
delete_option('category-key-jquery');
delete_site_option('category-key-jquery');
delete_option('featured-images');
delete_site_option('featured-images');
delete_option('responsive-key');
delete_site_option('responsive-key');
delete_option('animation-style');
delete_site_option('animation-style');
delete_option('posttiles-width');
delete_site_option('posttiles-width');
delete_option('posttiles-height');
delete_site_option('posttiles-height');
delete_option('featured-image-width');
delete_site_option('featured-image-width');
delete_option('featured-image-height');
delete_site_option('featured-image-height');
delete_option('excerpt-length');
delete_site_option('excerpt-length');
delete_option('pagination-key');
delete_site_option('pagination-key');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cat_bg_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cat_tx_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

