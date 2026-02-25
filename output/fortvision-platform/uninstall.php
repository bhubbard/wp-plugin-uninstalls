<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fortvision_settings');
delete_site_option('fortvision_settings');
delete_option('fortvision_orders_export_need_to_send');
delete_site_option('fortvision_orders_export_need_to_send');
delete_option('cron');
delete_site_option('cron');
delete_option('fortvision_customers_export_need_to_send');
delete_site_option('fortvision_customers_export_need_to_send');
delete_option('fortvision_product_export_need_to_send');
delete_site_option('fortvision_product_export_need_to_send');
delete_option('fortvision_debug_mode_enabled');
delete_site_option('fortvision_debug_mode_enabled');
delete_option('fortvision_debug_mode_enabled_requests');
delete_site_option('fortvision_debug_mode_enabled_requests');
delete_option('_fortvision_form');
delete_site_option('_fortvision_form');
delete_option('fortvision_sync_options');
delete_site_option('fortvision_sync_options');
delete_option('fortvision_orders_export_sent');
delete_site_option('fortvision_orders_export_sent');
delete_option('fortvision_customers_export_sent');
delete_site_option('fortvision_customers_export_sent');
delete_option('fortvision_initialexport');
delete_site_option('fortvision_initialexport');
delete_option('fortvision_product_export_sent');
delete_site_option('fortvision_product_export_sent');
delete_option('fortvision_script_val');
delete_site_option('fortvision_script_val');
delete_option('fortvision_sync_finished');
delete_site_option('fortvision_sync_finished');

// Delete Transients
delete_transient('fortvision_admin_notice');
delete_site_transient('fortvision_admin_notice');
delete_transient('fortvision_uninstall');
delete_site_transient('fortvision_uninstall');

// Clear Cron Jobs
wp_clear_scheduled_hook('sendorders_pack');
wp_clear_scheduled_hook('checkHistoryIsdone');
wp_clear_scheduled_hook('sendcustomers_pack');
wp_clear_scheduled_hook('sendproducts_pack');
wp_clear_scheduled_hook('syncOrders_scheduled');
wp_clear_scheduled_hook('syncCustomers_scheduled');
wp_clear_scheduled_hook('syncProducts_scheduled');
wp_clear_scheduled_hook('nop_scheduled');
wp_clear_scheduled_hook('dailyping');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fortvisionAcceptMarketing' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fortvisionAcceptMarketing' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fortvisionAcceptMarketing' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fortvisionAcceptMarketing' ) );

