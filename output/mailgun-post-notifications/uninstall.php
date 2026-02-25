<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mailgun_post_notifications_to_address');
delete_site_option('mailgun_post_notifications_to_address');
delete_option('mailgun_post_notifications_from_name');
delete_site_option('mailgun_post_notifications_from_name');
delete_option('mailgun_post_notifications_from_address');
delete_site_option('mailgun_post_notifications_from_address');
delete_option('mailgun_post_notifications_subject');
delete_site_option('mailgun_post_notifications_subject');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mailgun_notification_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mailgun_notification_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mailgun_notification_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mailgun_notification_sent' ) );

