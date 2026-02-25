<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('subscribe_reloaded_manager_page');
delete_site_option('subscribe_reloaded_manager_page');
delete_option('smtp_pass');
delete_site_option('smtp_pass');
delete_option('smtp_user');
delete_site_option('smtp_user');
delete_option('stcrbe_last_run');
delete_site_option('stcrbe_last_run');
delete_option('stcrbe_unsubscribed');
delete_site_option('stcrbe_unsubscribed');

// Clear Cron Jobs
wp_clear_scheduled_hook('FV_STCR_sharing_cron_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_stcr@_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_stcr@_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_stcr@_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_stcr@_%' ) );

