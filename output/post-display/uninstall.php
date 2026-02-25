<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tzpost_excerptlen_one');
delete_site_option('tzpost_excerptlen_one');
delete_option('tzpost_excerptlen');
delete_site_option('tzpost_excerptlen');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'tzpostsmethod%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'tzpost%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('tzpostsmethod1');
delete_site_option('tzpostsmethod1');
delete_option('tzpostsmethod2');
delete_site_option('tzpostsmethod2');
delete_option('tzpostsmethod3');
delete_site_option('tzpostsmethod3');

