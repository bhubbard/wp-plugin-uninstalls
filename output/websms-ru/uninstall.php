<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('websms-login');
delete_site_option('websms-login');
delete_option('websms-password');
delete_site_option('websms-password');
delete_option('websms-phone1');
delete_site_option('websms-phone1');
delete_option('websms-phone2');
delete_site_option('websms-phone2');
delete_option('websms-phone3');
delete_site_option('websms-phone3');
delete_option('websms-phone4');
delete_site_option('websms-phone4');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'websms-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'websms-phone%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

