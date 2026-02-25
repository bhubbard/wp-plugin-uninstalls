<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'chatwing_default_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('chatwing_default_keysecret');
delete_site_option('chatwing_default_keysecret');
delete_option('chatwing_default_app_id');
delete_site_option('chatwing_default_app_id');
delete_option('chatwing_access_token');
delete_site_option('chatwing_access_token');
delete_option('chatwing_default_width');
delete_site_option('chatwing_default_width');
delete_option('chatwing_default_height');
delete_site_option('chatwing_default_height');

