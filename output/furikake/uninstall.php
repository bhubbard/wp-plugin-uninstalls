<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('furikake_mode');
delete_site_option('furikake_mode');
delete_option('furikake_yahoo_app_id');
delete_site_option('furikake_yahoo_app_id');
delete_option('furikake_dictionary');
delete_site_option('furikake_dictionary');
delete_option('furikake_grade');
delete_site_option('furikake_grade');
delete_option('furikake_cache');
delete_site_option('furikake_cache');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'furikake_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

