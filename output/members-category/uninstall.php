<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sabaohmemcat_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('sabaohmemcat_filtercontent');
delete_site_option('sabaohmemcat_filtercontent');
delete_option('sabaohmemcat_filterreplace');
delete_site_option('sabaohmemcat_filterreplace');

