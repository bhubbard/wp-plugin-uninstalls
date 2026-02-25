<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('popnotifi_url_key');
delete_site_option('popnotifi_url_key');
delete_option('popnotifi_api_key');
delete_site_option('popnotifi_api_key');
delete_option('popnotifi_native_enabled');
delete_site_option('popnotifi_native_enabled');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pop_notifi_notification_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pop_notifi_notification_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pop_notifi_notification_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pop_notifi_notification_sent' ) );

