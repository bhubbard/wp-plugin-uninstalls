<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_wp_wlh_cron_queue');
delete_site_option('_wp_wlh_cron_queue');
delete_option('wp_wlh_db_version');
delete_site_option('wp_wlh_db_version');
delete_option('wp_wlh_install');
delete_site_option('wp_wlh_install');
delete_option('wp_wlh_uninstall');
delete_site_option('wp_wlh_uninstall');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_wlh_cron_job');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_wlh_linking_to' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_wlh_linking_to' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_wlh_linking_to' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_wlh_linking_to' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_wlh_linking_here' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_wlh_linking_here' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_wlh_linking_here' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_wlh_linking_here' ) );

