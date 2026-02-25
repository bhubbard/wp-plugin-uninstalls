<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('manage-inactive-subsites-deactivate');
delete_site_option('manage-inactive-subsites-deactivate');
delete_option('manage_inactive_subsites_interval_type');
delete_site_option('manage_inactive_subsites_interval_type');
delete_option('manage_inactive_subsites_interval_size');
delete_site_option('manage_inactive_subsites_interval_size');
delete_option('manage_inactive_subsites_action');
delete_site_option('manage_inactive_subsites_action');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'mis_cron_query_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('manage_inactive_subsites_cron_hourly');

