<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('infusionsoft_sdk_app_name');
delete_site_option('infusionsoft_sdk_app_name');
delete_option('infusionsoft_sdk_api_key');
delete_site_option('infusionsoft_sdk_api_key');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'infusionsoft_sdk_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

