<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('keygin_settings');
delete_site_option('keygin_settings');
delete_option('keygin_sync_enabled');
delete_site_option('keygin_sync_enabled');
delete_option('keygin_next_sync');
delete_site_option('keygin_next_sync');
delete_option('keygin_last_sync');
delete_site_option('keygin_last_sync');
delete_option('keygin_erp_sync_active');
delete_site_option('keygin_erp_sync_active');

// Delete Transients
delete_transient('keygin_warehouses');
delete_site_transient('keygin_warehouses');
delete_transient('keygin_sync_running');
delete_site_transient('keygin_sync_running');
delete_transient('keygin_warehouses_fetched_at');
delete_site_transient('keygin_warehouses_fetched_at');

// Clear Cron Jobs
wp_clear_scheduled_hook('keygin_sync_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_keygin_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_keygin_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_keygin_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_keygin_id' ) );

