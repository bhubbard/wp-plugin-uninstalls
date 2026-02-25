<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cboc-language');
delete_site_option('cboc-language');
delete_option('cboc-format');
delete_site_option('cboc-format');
delete_option('cboc-show-credits');
delete_site_option('cboc-show-credits');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cboc-color-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cbddc-version');
delete_site_option('cbddc-version');
delete_option('cbddc-show-credits');
delete_site_option('cbddc-show-credits');

