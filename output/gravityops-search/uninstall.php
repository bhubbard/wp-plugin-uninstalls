<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%rating_asked' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('gops_error');
delete_site_transient('gops_error');
delete_transient('gops_notice');
delete_site_transient('gops_notice');

// Clear Cron Jobs

