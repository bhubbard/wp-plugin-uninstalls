<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wac_subdomain');
delete_site_option('wac_subdomain');
delete_option('wac_login');
delete_site_option('wac_login');
delete_option('wac_key');
delete_site_option('wac_key');
delete_option('wooac_orders_send_from');
delete_site_option('wooac_orders_send_from');
delete_option('wooms_orders_send_from');
delete_site_option('wooms_orders_send_from');
delete_option('wac_sync_time');
delete_site_option('wac_sync_time');
delete_option('wac_sync_disable');
delete_site_option('wac_sync_disable');

// Delete Transients
delete_transient('wac_last_start');
delete_site_transient('wac_last_start');

// Clear Cron Jobs
wp_clear_scheduled_hook('wooamoconnector_cron_worker');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wooamoc_send_timestamp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wooamoc_send_timestamp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wooamoc_send_timestamp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wooamoc_send_timestamp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wac_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wac_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wac_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wac_id' ) );

