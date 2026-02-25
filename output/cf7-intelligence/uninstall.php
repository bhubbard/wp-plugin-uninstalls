<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('intel_form_track_submission_default');
delete_site_option('intel_form_track_submission_default');
delete_option('intel_form_track_submission_value_default');
delete_site_option('intel_form_track_submission_value_default');
delete_option('intel_setup');
delete_site_option('intel_setup');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpcf7_intel_form_settings_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('intel_demo_mode');
delete_site_option('intel_demo_mode');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_intel_activated_%', '_site_transient_intel_activated_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

