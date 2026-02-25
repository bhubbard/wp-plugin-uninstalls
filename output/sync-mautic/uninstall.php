<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dogbytemarketing_sync_mautic_settings');
delete_site_option('dogbytemarketing_sync_mautic_settings');
delete_option('dogbytemarketing_sync_mautic_start_time');
delete_site_option('dogbytemarketing_sync_mautic_start_time');
delete_option('dogbytemarketing_sync_mautic_total_orders');
delete_site_option('dogbytemarketing_sync_mautic_total_orders');
delete_option('dogbytemarketing_last_sync_mautic_order_index');
delete_site_option('dogbytemarketing_last_sync_mautic_order_index');
delete_option('dogbytemarketing_sync_mautic_past_orders_complete');
delete_site_option('dogbytemarketing_sync_mautic_past_orders_complete');
delete_option('mautic_sync_settings');
delete_site_option('mautic_sync_settings');

// Delete Transients
delete_transient('dogbytemarketing_mautic_access_token');
delete_site_transient('dogbytemarketing_mautic_access_token');

// Clear Cron Jobs
wp_clear_scheduled_hook('dogbytemarketing_sync_mautic_past_orders');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mautic_lead_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mautic_lead_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mautic_lead_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mautic_lead_id' ) );

