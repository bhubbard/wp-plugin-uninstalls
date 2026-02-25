<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ghlcf7_locationId');
delete_site_option('ghlcf7_locationId');
delete_option('ghlcf7_name_fields');
delete_site_option('ghlcf7_name_fields');
delete_option('ghlcf7_email_field');
delete_site_option('ghlcf7_email_field');
delete_option('ghlcf7_phne_field');
delete_site_option('ghlcf7_phne_field');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ghlcf7_checkbox_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ghlcf7_tag_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ghlcf7-global-tag-names');
delete_site_option('ghlcf7-global-tag-names');
delete_option('ghlcf7_access_token');
delete_site_option('ghlcf7_access_token');
delete_option('ghlcf7_client_id');
delete_site_option('ghlcf7_client_id');
delete_option('ghlcf7_client_secret');
delete_site_option('ghlcf7_client_secret');
delete_option('ghlcf7_refresh_token');
delete_site_option('ghlcf7_refresh_token');
delete_option('ghlcf7_loc_name');
delete_site_option('ghlcf7_loc_name');
delete_option('ghlcf7_location_connected');
delete_site_option('ghlcf7_location_connected');

// Delete Transients
delete_transient('ghlcf7_access_token_valid');
delete_site_transient('ghlcf7_access_token_valid');
delete_transient('ghlcf7_location_tags');
delete_site_transient('ghlcf7_location_tags');
delete_transient('ghlcf7_location_wokflow');
delete_site_transient('ghlcf7_location_wokflow');

