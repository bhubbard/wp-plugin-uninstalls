<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('snow');
delete_site_option('snow');
delete_option('snowadvanced');
delete_site_option('snowadvanced');
delete_option('snowtechnical');
delete_site_option('snowtechnical');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_snow_%', '_site_transient_snow_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('snow_intro_general');
delete_site_transient('snow_intro_general');
delete_transient('snow_intro_advanced');
delete_site_transient('snow_intro_advanced');
delete_transient('snow_intro_technical');
delete_site_transient('snow_intro_technical');
delete_transient('snow_hello');
delete_site_transient('snow_hello');

