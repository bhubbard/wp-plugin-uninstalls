<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('duitku_environment');
delete_site_option('duitku_environment');
delete_option('duitku_merchant_code');
delete_site_option('duitku_merchant_code');
delete_option('duitku_api_key');
delete_site_option('duitku_api_key');
delete_option('duitku_prefix');
delete_site_option('duitku_prefix');
delete_option('duitku_debug');
delete_site_option('duitku_debug');

