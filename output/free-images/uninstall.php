<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fal_allow_tracking');
delete_site_option('fal_allow_tracking');
delete_option('fal_tracker_last_send');
delete_site_option('fal_tracker_last_send');
delete_option('_surror_tools_town_secret');
delete_site_option('_surror_tools_town_secret');
delete_option('surror_tools_town_info');
delete_site_option('surror_tools_town_info');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'surror_notices_dismissed_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('fal_ask_again');
delete_site_transient('fal_ask_again');

// Clear Cron Jobs
wp_clear_scheduled_hook('fal_tracker_send_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'surror_notices_dismissed_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'surror_notices_dismissed_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'surror_notices_dismissed_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'surror_notices_dismissed_%' ) );

