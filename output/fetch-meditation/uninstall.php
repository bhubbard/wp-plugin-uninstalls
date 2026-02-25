<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_language' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fetch_meditation_timezone');
delete_site_option('fetch_meditation_timezone');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fetch_meditation_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fetch_meditation_excerpt');
delete_site_option('fetch_meditation_excerpt');
delete_option('fetch_meditation_read_more_url');
delete_site_option('fetch_meditation_read_more_url');
delete_option('fetch_meditation_jft_language');
delete_site_option('fetch_meditation_jft_language');
delete_option('fetch_meditation_spad_language');
delete_site_option('fetch_meditation_spad_language');
delete_option('fetch_meditation_book');
delete_site_option('fetch_meditation_book');
delete_option('fetch_meditation_layout');
delete_site_option('fetch_meditation_layout');
delete_option('fetch_meditation_theme');
delete_site_option('fetch_meditation_theme');
delete_option('fetch_meditation_tabs_layout');
delete_site_option('fetch_meditation_tabs_layout');

