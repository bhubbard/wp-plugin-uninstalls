<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wps_aa_language');
delete_site_option('wps_aa_language');
delete_option('wps_aa_google_api_key');
delete_site_option('wps_aa_google_api_key');
delete_option('wps_aa_results_title');
delete_site_option('wps_aa_results_title');
delete_option('wps_aa_instances');
delete_site_option('wps_aa_instances');
delete_option('wps_aa_review');
delete_site_option('wps_aa_review');
delete_option('wps_aa_install_time');
delete_site_option('wps_aa_install_time');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%options' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

