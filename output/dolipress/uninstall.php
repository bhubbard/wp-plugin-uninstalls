<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dgform');
delete_site_option('dgform');
delete_option('dpapikey');
delete_site_option('dpapikey');
delete_option('dgurl');
delete_site_option('dgurl');
delete_option('usehttps');
delete_site_option('usehttps');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'gffield%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'dbfield%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('dpgf_errors');
delete_site_option('dpgf_errors');
delete_option('telegramid');
delete_site_option('telegramid');

