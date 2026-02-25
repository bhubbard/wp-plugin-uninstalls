<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('corona_test_results_options');
delete_site_option('corona_test_results_options');
delete_option('dismissed_corona_test_results_rating_nag');
delete_site_option('dismissed_corona_test_results_rating_nag');
delete_option('corona_test_results_activationtime');
delete_site_option('corona_test_results_activationtime');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'dismissed_corona_test_results_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_page_created' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('corona_test_results_license_error');
delete_site_option('corona_test_results_license_error');
delete_option('corona_test_results_quickcheckin_page_created');
delete_site_option('corona_test_results_quickcheckin_page_created');
delete_option('corona_test_results_result_invalid_page_created');
delete_site_option('corona_test_results_result_invalid_page_created');

// Delete Transients
delete_transient('corona_test_results_license_error');
delete_site_transient('corona_test_results_license_error');
delete_transient('corona_test_results_license_activated');
delete_site_transient('corona_test_results_license_activated');

