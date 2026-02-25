<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpedtra-meta');
delete_site_option('wpedtra-meta');
delete_option('wpedtra-terms');
delete_site_option('wpedtra-terms');
delete_option('wpedtra-p2p');
delete_site_option('wpedtra-p2p');
delete_option('wpedtra-children_ids');
delete_site_option('wpedtra-children_ids');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpedtra-pt-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

