<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wfd404_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wfd404_base_index_initialized');
delete_site_option('wfd404_base_index_initialized');
delete_option('wfd404_email_enabled');
delete_site_option('wfd404_email_enabled');
delete_option('wfd404_email_address');
delete_site_option('wfd404_email_address');
delete_option('wfd404_notify_new_urls');
delete_site_option('wfd404_notify_new_urls');

// Clear Cron Jobs
wp_clear_scheduled_hook('wfd404_daily_scan');

