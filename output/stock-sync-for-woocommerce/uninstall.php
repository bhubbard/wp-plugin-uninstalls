<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woo_stock_sync_last_updated');
delete_site_option('woo_stock_sync_last_updated');
delete_option('wss_last_response');
delete_site_option('wss_last_response');
delete_option('woo_stock_sync_log_retention');
delete_site_option('woo_stock_sync_log_retention');
delete_option('wss_last_sync');
delete_site_option('wss_last_sync');
delete_option('wss_db_version');
delete_site_option('wss_db_version');
delete_option('woocommerce_manage_stock');
delete_site_option('woocommerce_manage_stock');
delete_option('woo_stock_sync_role');
delete_site_option('woo_stock_sync_role');
delete_option('woo_stock_sync_process_model');
delete_site_option('woo_stock_sync_process_model');
delete_option('woo_stock_sync_batch_size');
delete_site_option('woo_stock_sync_batch_size');
delete_option('woo_stock_sync_enabled');
delete_site_option('woo_stock_sync_enabled');
delete_option('wp_flash_messages');
delete_site_option('wp_flash_messages');

// Clear Cron Jobs
wp_clear_scheduled_hook('woo_stock_sync_log_clean');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_woo_stock_sync_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_woo_stock_sync_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_woo_stock_sync_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_woo_stock_sync_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_wss_status_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_wss_status_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_wss_status_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_wss_status_%' ) );

