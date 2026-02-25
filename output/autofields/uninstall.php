<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('autofields_insert_excerpt');
delete_site_option('autofields_insert_excerpt');
delete_option('autofields_insert_image_custom_field');
delete_site_option('autofields_insert_image_custom_field');
delete_option('autofields_check_excerpt');
delete_site_option('autofields_check_excerpt');
delete_option('autofields_check_image_custom_field');
delete_site_option('autofields_check_image_custom_field');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'autofields_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

