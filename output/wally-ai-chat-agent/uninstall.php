<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wally_api_key');
delete_site_option('wally_api_key');
delete_option('wally_widget_enabled');
delete_site_option('wally_widget_enabled');
delete_option('wally_autosync_enabled');
delete_site_option('wally_autosync_enabled');
delete_option('wally_sync_consent');
delete_site_option('wally_sync_consent');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_transient_timeout_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wally_batch_size');
delete_site_option('wally_batch_size');

