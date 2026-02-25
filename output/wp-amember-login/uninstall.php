<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_amember_login_api_url');
delete_site_option('wp_amember_login_api_url');
delete_option('wp_amember_login_api_key');
delete_site_option('wp_amember_login_api_key');
delete_option('wp_amember_login');
delete_site_option('wp_amember_login');
delete_option('my_option_name');
delete_site_option('my_option_name');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wp_amember_login_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

