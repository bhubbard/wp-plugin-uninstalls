<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Twitter_HashTag');
delete_site_option('Twitter_HashTag');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_tweets_has_%', '_site_transient_tweets_has_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

