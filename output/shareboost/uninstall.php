<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sb-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('sb-title');
delete_site_option('sb-title');
delete_option('sb-color');
delete_site_option('sb-color');
delete_option('sb-position');
delete_site_option('sb-position');
delete_option('sb-sharing');
delete_site_option('sb-sharing');
delete_option('sb-effect');
delete_site_option('sb-effect');
delete_option('sb-share-facebook');
delete_site_option('sb-share-facebook');
delete_option('sb-share-tweet');
delete_site_option('sb-share-tweet');
delete_option('sb-share-pinterest');
delete_site_option('sb-share-pinterest');
delete_option('sb-share-linkedin');
delete_site_option('sb-share-linkedin');
delete_option('sb-share-gplus');
delete_site_option('sb-share-gplus');
delete_option('sb-share-email');
delete_site_option('sb-share-email');

