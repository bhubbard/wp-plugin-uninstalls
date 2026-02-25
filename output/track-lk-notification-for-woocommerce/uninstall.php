<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tracknotify_app_key');
delete_site_option('tracknotify_app_key');
delete_option('tracknotify_app_secret');
delete_site_option('tracknotify_app_secret');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('tracknotify_admin_notification_status');
delete_site_option('tracknotify_admin_notification_status');
delete_option('tracknotify_customer_notification_status');
delete_site_option('tracknotify_customer_notification_status');
delete_option('tracknotify_admin_notification_text');
delete_site_option('tracknotify_admin_notification_text');
delete_option('tracknotify_service');
delete_site_option('tracknotify_service');
delete_option('tracknotify_admin_phone');
delete_site_option('tracknotify_admin_phone');
delete_option('tracknotify_customer_notification_text');
delete_site_option('tracknotify_customer_notification_text');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'user_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'user_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'user_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'user_phone' ) );

