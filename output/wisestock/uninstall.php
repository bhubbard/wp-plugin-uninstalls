<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wisestock_options');
delete_site_option('wisestock_options');
delete_option('wisestock_installation_completed');
delete_site_option('wisestock_installation_completed');
delete_option('wisestock_activation_status');
delete_site_option('wisestock_activation_status');
delete_option('wisestock_activation_date');
delete_site_option('wisestock_activation_date');
delete_option('wisestock_activation_error');
delete_site_option('wisestock_activation_error');
delete_option('wisestock_db_version');
delete_site_option('wisestock_db_version');
delete_option('wisestock_installation_date');
delete_site_option('wisestock_installation_date');
delete_option('wisestock_demo_data_version');
delete_site_option('wisestock_demo_data_version');

// Delete Transients
delete_transient('wisestock_all_suppliers');
delete_site_transient('wisestock_all_suppliers');
delete_transient('wisestock_notifications_all');
delete_site_transient('wisestock_notifications_all');
delete_transient('wisestock_notifications_critical');
delete_site_transient('wisestock_notifications_critical');
delete_transient('wisestock_notifications_warning');
delete_site_transient('wisestock_notifications_warning');
delete_transient('wisestock_notifications_mild');
delete_site_transient('wisestock_notifications_mild');
delete_transient('wisestock_velocity_cache');
delete_site_transient('wisestock_velocity_cache');
delete_transient('wisestock_notifications_cache');
delete_site_transient('wisestock_notifications_cache');
delete_transient('wisestock_suppliers_cache');
delete_site_transient('wisestock_suppliers_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('wisestock_daily_calculations');
wp_clear_scheduled_hook('wisestock_notification_check');
wp_clear_scheduled_hook('wisestock_hourly_notifications');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wisestock_default_supplier' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wisestock_default_supplier' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wisestock_default_supplier' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wisestock_default_supplier' ) );

