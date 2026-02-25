<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('push7_appno');
delete_site_option('push7_appno');
delete_option('push7_sdk_enabled');
delete_site_option('push7_sdk_enabled');
delete_option('push7_apikey');
delete_site_option('push7_apikey');
delete_option('push7_blog_title');
delete_site_option('push7_blog_title');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'push7_push_pt_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'push7_push_ctg_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('push7_rpid_dict');
delete_site_option('push7_rpid_dict');
delete_option('push7_sslverify_disabled');
delete_site_option('push7_sslverify_disabled');

