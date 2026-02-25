<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('horshipsrectors_popularity_track_pagerank');
delete_site_option('horshipsrectors_popularity_track_pagerank');
delete_option('horshipsrectors_popularity_track_alexa');
delete_site_option('horshipsrectors_popularity_track_alexa');
delete_option('horshipsrectors_popularity_track_links');
delete_site_option('horshipsrectors_popularity_track_links');
delete_option('horshipsrectors_popularity_daystocheck');
delete_site_option('horshipsrectors_popularity_daystocheck');
delete_option('horshipsrectors_popularity_daystodisplay');
delete_site_option('horshipsrectors_popularity_daystodisplay');
delete_option('horshipsrectors_popularity_checker_google_check');
delete_site_option('horshipsrectors_popularity_checker_google_check');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'horshipsrectors_popularity_checker_google_value_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('horshipsrectors_popularity_checker_alexa_check');
delete_site_option('horshipsrectors_popularity_checker_alexa_check');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'horshipsrectors_popularity_checker_alexa_rank_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'horshipsrectors_popularity_checker_alexa_links_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

