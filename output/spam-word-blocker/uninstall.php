<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spamwobl_blocked_words');
delete_site_option('spamwobl_blocked_words');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_spamwobl_blocked_%', '_site_transient_spamwobl_blocked_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

