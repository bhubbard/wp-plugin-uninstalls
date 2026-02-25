<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('YD_WPCSI_last_updated');
delete_site_option('YD_WPCSI_last_updated');
delete_option('YD_WPCSI_hourly');
delete_site_option('YD_WPCSI_hourly');
delete_option('YD_WPCSI_daily');
delete_site_option('YD_WPCSI_daily');

// Clear Cron Jobs
wp_clear_scheduled_hook('yd_hourly_event');
wp_clear_scheduled_hook('yd_daily_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'yd_views_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'yd_views_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'yd_views_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'yd_views_%' ) );

