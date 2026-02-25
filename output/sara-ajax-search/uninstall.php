<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dr_sara_search_d_post');
delete_site_option('dr_sara_search_d_post');
delete_option('dr_sara_search_total');
delete_site_option('dr_sara_search_total');
delete_option('dr_sara_search_thumbnail');
delete_site_option('dr_sara_search_thumbnail');
delete_option('dr_sara_search_title');
delete_site_option('dr_sara_search_title');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'dr_sara_search_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

