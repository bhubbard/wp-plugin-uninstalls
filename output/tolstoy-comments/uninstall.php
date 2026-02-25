<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tolstoycomments_key');
delete_site_option('tolstoycomments_key');
delete_option('tolstoycomments_site_id');
delete_site_option('tolstoycomments_site_id');
delete_option('tolstoycomments_export');
delete_site_option('tolstoycomments_export');
delete_option('tolstoycomments_export_latest_id');
delete_site_option('tolstoycomments_export_latest_id');
delete_option('tolstoycomments_import');
delete_site_option('tolstoycomments_import');
delete_option('tolstoycomments_active');
delete_site_option('tolstoycomments_active');
delete_option('tolstoycomments_binding');
delete_site_option('tolstoycomments_binding');
delete_option('tolstoycomments_index');
delete_site_option('tolstoycomments_index');
delete_option('tolstoycomments_custom_settings');
delete_site_option('tolstoycomments_custom_settings');
delete_option('tolstoycomments');
delete_site_option('tolstoycomments');

// Clear Cron Jobs
wp_clear_scheduled_hook('tolstoycomments_cron_task_queue');
wp_clear_scheduled_hook('tolstoycomments_cron_task');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_tolstoycomments_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_tolstoycomments_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_tolstoycomments_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_tolstoycomments_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_tolstoycomments_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_tolstoycomments_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_tolstoycomments_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_tolstoycomments_id' ) );

