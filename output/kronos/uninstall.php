<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kronos_calendar_categories');
delete_site_option('kronos_calendar_categories');
delete_option('kronos_calendar_url');
delete_site_option('kronos_calendar_url');
delete_option('kronos_abbreviations');
delete_site_option('kronos_abbreviations');
delete_option('kronos_state');
delete_site_option('kronos_state');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_kronos_update_cal_%', '_site_transient_kronos_update_cal_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_kronos_cal_%', '_site_transient_kronos_cal_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

