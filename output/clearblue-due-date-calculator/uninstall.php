<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cbddc-language');
delete_site_option('cbddc-language');
delete_option('cbddc-format');
delete_site_option('cbddc-format');
delete_option('cbddc-show-credits');
delete_site_option('cbddc-show-credits');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cbddc-color-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cbddc-version');
delete_site_option('cbddc-version');

