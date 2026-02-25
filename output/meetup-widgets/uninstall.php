<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vs_meet_options');
delete_site_option('vs_meet_options');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_vsmeet_user_events_%', '_site_transient_vsmeet_user_events_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

