<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('accumulus_settings');
delete_site_option('accumulus_settings');
delete_option('accumulus_webhook_endpoint_enabled');
delete_site_option('accumulus_webhook_endpoint_enabled');
delete_option('accumulus_webhook_auth_user');
delete_site_option('accumulus_webhook_auth_user');
delete_option('accumulus_webhook_auth_password');
delete_site_option('accumulus_webhook_auth_password');
delete_option('accumulus_active_customer_role');
delete_site_option('accumulus_active_customer_role');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%token' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%client_id' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%client_secret' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('accumulus_client_id');
delete_site_option('accumulus_client_id');
delete_option('accumulus_client_secret');
delete_site_option('accumulus_client_secret');
delete_option('accumulus_testclient_id');
delete_site_option('accumulus_testclient_id');
delete_option('accumulus_testclient_secret');
delete_site_option('accumulus_testclient_secret');
delete_option('accumulus_itestclient_id');
delete_site_option('accumulus_itestclient_id');
delete_option('accumulus_itestclient_secret');
delete_site_option('accumulus_itestclient_secret');
delete_option('accumulus_token');
delete_site_option('accumulus_token');
delete_option('accumulus_testtoken');
delete_site_option('accumulus_testtoken');
delete_option('accumulus_itesttoken');
delete_site_option('accumulus_itesttoken');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'accumulus_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'accumulus_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'accumulus_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'accumulus_id' ) );

