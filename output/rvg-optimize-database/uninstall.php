<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('odb_rvg_options');
delete_site_option('odb_rvg_options');
delete_option('odb_rvg_excluded_tabs');
delete_site_option('odb_rvg_excluded_tabs');

// Clear Cron Jobs
wp_clear_scheduled_hook('odb_scheduler');
wp_clear_scheduled_hook('rvg_optimize_database');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'keep_revisions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'keep_revisions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'keep_revisions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'keep_revisions' ) );

