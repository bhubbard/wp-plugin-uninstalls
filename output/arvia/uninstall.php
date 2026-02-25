<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('arviachat_plugin_version');
delete_site_option('arviachat_plugin_version');
delete_option('arviachat_token');
delete_site_option('arviachat_token');
delete_option('arviachat_hash');
delete_site_option('arviachat_hash');
delete_option('arviachat_projectId');
delete_site_option('arviachat_projectId');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'arviachat_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

