<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tct_spd_settings');
delete_site_option('tct_spd_settings');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_tct_spd_weather_data%', '_site_transient_tct_spd_weather_data%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

