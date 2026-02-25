<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jdws_order_send_running');
delete_site_option('jdws_order_send_running');
delete_option('jdws_order_send_total');
delete_site_option('jdws_order_send_total');
delete_option('jdws_order_send_processed');
delete_site_option('jdws_order_send_processed');
delete_option('jdws_order_sync_result');
delete_site_option('jdws_order_sync_result');
delete_option('jdws_selected_sync_ids');
delete_site_option('jdws_selected_sync_ids');
delete_option('jdws_webhook_registered');
delete_site_option('jdws_webhook_registered');
delete_option('jdws_webhook_token');
delete_site_option('jdws_webhook_token');
delete_option('jdws_options');
delete_site_option('jdws_options');
delete_option('jdws_sync_running');
delete_site_option('jdws_sync_running');
delete_option('jdws_sync_processed');
delete_site_option('jdws_sync_processed');
delete_option('jdws_sync_total');
delete_site_option('jdws_sync_total');
delete_option('jdws_sync_failed');
delete_site_option('jdws_sync_failed');
delete_option('jdws_logger_db_version');
delete_site_option('jdws_logger_db_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('jdws_send_pending_orders');
wp_clear_scheduled_hook('jdws_cleanup_sync_logs_daily');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_jdws_remote_product_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_jdws_remote_product_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_jdws_remote_product_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_jdws_remote_product_id' ) );

