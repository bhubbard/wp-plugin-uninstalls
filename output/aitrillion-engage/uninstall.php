<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_aitrillion_engage_api_key');
delete_site_option('_aitrillion_engage_api_key');
delete_option('_aitrillion_engage_api_password');
delete_site_option('_aitrillion_engage_api_password');
delete_option('_aitrillion_engage_script_url');
delete_site_option('_aitrillion_engage_script_url');
delete_option('_aitrillion_engage_created_users');
delete_site_option('_aitrillion_engage_created_users');
delete_option('_aitrillion_engage_failed_sync_users');
delete_site_option('_aitrillion_engage_failed_sync_users');
delete_option('_aitrillion_engage_updated_users');
delete_site_option('_aitrillion_engage_updated_users');
delete_option('_aitrillion_engage_deleted_users');
delete_site_option('_aitrillion_engage_deleted_users');
delete_option('_aitrillion_engage_script_version');
delete_site_option('_aitrillion_engage_script_version');

// Delete Transients
delete_transient('aitrillion_engage_clear_log_message');
delete_site_transient('aitrillion_engage_clear_log_message');

// Clear Cron Jobs
wp_clear_scheduled_hook('aitrillion_engage_data_sync_schedule');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'phone_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'phone_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'phone_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'phone_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'modified_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'modified_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'modified_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'modified_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_aitrillion_engage_user_sync' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_aitrillion_engage_user_sync' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_aitrillion_engage_user_sync' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_aitrillion_engage_user_sync' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_aitrillion_engage_sync_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_aitrillion_engage_sync_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_aitrillion_engage_sync_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_aitrillion_engage_sync_date' ) );

