<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_jv_ces_db_version');
delete_site_option('wp_jv_ces_db_version');
delete_option('wp_jv_ces_set_email_from');
delete_site_option('wp_jv_ces_set_email_from');
delete_option('wp_jv_ces_set_email_from_address');
delete_site_option('wp_jv_ces_set_email_from_address');
delete_option('wp_jv_ces_set_notification_mode');
delete_site_option('wp_jv_ces_set_notification_mode');
delete_option('wp_jv_ces_set_notification_about');
delete_site_option('wp_jv_ces_set_notification_about');
delete_option('wp_jv_ces_set_subject');
delete_site_option('wp_jv_ces_set_subject');
delete_option('wp_jv_ces_set_content');
delete_site_option('wp_jv_ces_set_content');

// Delete Transients
delete_transient('auto_notification_result');
delete_site_transient('auto_notification_result');
delete_transient('auto_notification_message');
delete_site_transient('auto_notification_message');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_jv_ces_user_notification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_jv_ces_user_notification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_jv_ces_user_notification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_jv_ces_user_notification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_jv_ces_notification_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_jv_ces_notification_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_jv_ces_notification_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_jv_ces_notification_sent' ) );

