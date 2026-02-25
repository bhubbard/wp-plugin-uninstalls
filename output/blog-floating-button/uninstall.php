<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bfb_license_key');
delete_site_option('bfb_license_key');
delete_option('bfb_license_key_optimize');
delete_site_option('bfb_license_key_optimize');
delete_option('bfb_access_db_version');
delete_site_option('bfb_access_db_version');
delete_option('bfb_click_db_version');
delete_site_option('bfb_click_db_version');
delete_option('bfb_optimize_db_version');
delete_site_option('bfb_optimize_db_version');
delete_option('bfb_retention_period');
delete_site_option('bfb_retention_period');

// Delete Transients
delete_transient('bfb_license_key_check_cache');
delete_site_transient('bfb_license_key_check_cache');
delete_transient('bfb_license_key_optimize_cache');
delete_site_transient('bfb_license_key_optimize_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('bfb_cleanup_logs_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'bfb_use_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'bfb_use_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'bfb_use_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'bfb_use_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'bfb_designType_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'bfb_designType_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'bfb_designType_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'bfb_designType_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'bfb_optId_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'bfb_optId_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'bfb_optId_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'bfb_optId_%' ) );

