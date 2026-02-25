<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'em_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('em_content_image');
delete_site_option('em_content_image');
delete_option('em_image_url');
delete_site_option('em_image_url');
delete_option('em_source_code');
delete_site_option('em_source_code');
delete_option('em_active');
delete_site_option('em_active');
delete_option('em_sitewide');
delete_site_option('em_sitewide');

