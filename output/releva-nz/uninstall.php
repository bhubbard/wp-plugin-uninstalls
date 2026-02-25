<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('relevatracking_api_key');
delete_site_option('relevatracking_api_key');
delete_option('relevatracking_client_id');
delete_site_option('relevatracking_client_id');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_api_key' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('relevatracking_additional_html');
delete_site_option('relevatracking_additional_html');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

