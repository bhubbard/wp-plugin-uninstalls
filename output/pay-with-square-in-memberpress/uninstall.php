<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mepr_free_square_mode');
delete_site_option('mepr_free_square_mode');
delete_option('mepr_free_square_access_token_sandbox');
delete_site_option('mepr_free_square_access_token_sandbox');
delete_option('mepr_free_square_access_token');
delete_site_option('mepr_free_square_access_token');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'square_refund_id_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'mepr_free_square_locations%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('mepr_free_square_refresh_token_sandbox');
delete_site_option('mepr_free_square_refresh_token_sandbox');
delete_option('mepr_free_square_response_body_sandbox');
delete_site_option('mepr_free_square_response_body_sandbox');
delete_option('mepr_free_square_refresh_token');
delete_site_option('mepr_free_square_refresh_token');
delete_option('mepr_free_square_response_body');
delete_site_option('mepr_free_square_response_body');
delete_option('mepr_options');
delete_site_option('mepr_options');
delete_option('mepr-square-locationId');
delete_site_option('mepr-square-locationId');
delete_option('mepr_free_square_app_id');
delete_site_option('mepr_free_square_app_id');
delete_option('mepr_free_square_locations_sandbox');
delete_site_option('mepr_free_square_locations_sandbox');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'mepr_integrations_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('mepr_free_square_locations');
delete_site_option('mepr_free_square_locations');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mepr_product_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mepr_product_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mepr_product_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mepr_product_price' ) );

