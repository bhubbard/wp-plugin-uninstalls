<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gf_madmimi_version');
delete_site_option('gf_madmimi_version');
delete_option('gf_madmimi_settings');
delete_site_option('gf_madmimi_settings');
delete_option('recently_activated');
delete_site_option('recently_activated');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_remote_ad', '_site_transient_%_remote_ad' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

