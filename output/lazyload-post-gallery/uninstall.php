<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('slwsu_is_active_grouper');
delete_site_option('slwsu_is_active_grouper');
delete_option('slwsu_lazyload_post_gallery_grouper');
delete_site_option('slwsu_lazyload_post_gallery_grouper');
delete_option('slwsu_lazyload_post_gallery_delete_options');
delete_site_option('slwsu_lazyload_post_gallery_delete_options');
delete_option('slwsu_lazyload_post_gallery_add_gallery_title');
delete_site_option('slwsu_lazyload_post_gallery_add_gallery_title');
delete_option('slwsu_lazyload_post_gallery_add_carousel_title');
delete_site_option('slwsu_lazyload_post_gallery_add_carousel_title');
delete_option('slwsu_lazyload_post_gallery_add_carousel_caption');
delete_site_option('slwsu_lazyload_post_gallery_add_carousel_caption');
delete_option('slwsu_lazyload_post_gallery_add_carousel_description');
delete_site_option('slwsu_lazyload_post_gallery_add_carousel_description');
delete_option('slwsu_lazyload_post_gallery_styles');
delete_site_option('slwsu_lazyload_post_gallery_styles');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'slwsu_lazyload_post_gallery_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('slwsu_lazyload_post_gallery_options');
delete_site_transient('slwsu_lazyload_post_gallery_options');

