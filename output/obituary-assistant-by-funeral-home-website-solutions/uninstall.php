<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fhw-solutions-obituaries_1');
delete_site_option('fhw-solutions-obituaries_1');
delete_option('fhw-solutions-obituaries_2');
delete_site_option('fhw-solutions-obituaries_2');
delete_option('fhw-solutions-obituaries_3');
delete_site_option('fhw-solutions-obituaries_3');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_1' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_2' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_3' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_4' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_validation_messages' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('oa-version');
delete_site_option('oa-version');
delete_option('oa_api_base');
delete_site_option('oa_api_base');
delete_option('fhw_solutions_obituaries_client_info');
delete_site_option('fhw_solutions_obituaries_client_info');
delete_option('fhw-solutions-elements');
delete_site_option('fhw-solutions-elements');
delete_option('florist-one-flower-delivery');
delete_site_option('florist-one-flower-delivery');

