<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('resaline_frame_height');
delete_site_option('resaline_frame_height');
delete_option('resaline_frame_length');
delete_site_option('resaline_frame_length');
delete_option('resaline_frame_background');
delete_site_option('resaline_frame_background');
delete_option('resaline_nb_calendars');
delete_site_option('resaline_nb_calendars');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'resaline_calendar_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('resaline_account_id');
delete_site_option('resaline_account_id');

