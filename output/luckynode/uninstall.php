<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('luckynode-database-version');
delete_site_option('luckynode-database-version');
delete_option('luckynode-crm-settings');
delete_site_option('luckynode-crm-settings');
delete_option('luckynode-maintenance-mailgun-settings');
delete_site_option('luckynode-maintenance-mailgun-settings');
delete_option('luckynode-optimization-image-sizes');
delete_site_option('luckynode-optimization-image-sizes');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_size_w' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_size_h' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_crop' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('luckynode-optimization-image-settings');
delete_site_option('luckynode-optimization-image-settings');

