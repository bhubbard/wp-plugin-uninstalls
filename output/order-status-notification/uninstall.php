<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('osn_twilio_sid');
delete_site_option('osn_twilio_sid');
delete_option('osn_twilio_token');
delete_site_option('osn_twilio_token');
delete_option('osn_plivo_auth');
delete_site_option('osn_plivo_auth');
delete_option('osn_plivo_token');
delete_site_option('osn_plivo_token');
delete_option('osn_plivo_number');
delete_site_option('osn_plivo_number');
delete_option('osn_twilio_number');
delete_site_option('osn_twilio_number');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('osn_admin_notification_status');
delete_site_option('osn_admin_notification_status');
delete_option('osn_customer_notification_status');
delete_site_option('osn_customer_notification_status');
delete_option('osn_admin_notification_text');
delete_site_option('osn_admin_notification_text');
delete_option('osn_service');
delete_site_option('osn_service');
delete_option('osn_admin_phone');
delete_site_option('osn_admin_phone');
delete_option('osn_customer_notification_text');
delete_site_option('osn_customer_notification_text');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'user_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'user_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'user_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'user_phone' ) );

