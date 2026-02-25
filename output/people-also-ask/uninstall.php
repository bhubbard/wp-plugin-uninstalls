<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('people_also_asked_version');
delete_site_option('people_also_asked_version');
delete_option('people_also_display-view-more');
delete_site_option('people_also_display-view-more');
delete_option('people_also_display-request-removal');
delete_site_option('people_also_display-request-removal');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

