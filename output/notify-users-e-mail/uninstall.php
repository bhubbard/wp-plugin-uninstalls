<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('notify_users_email');
delete_site_option('notify_users_email');
delete_option('notify_users_email_version');
delete_site_option('notify_users_email_version');
delete_option('notify_users_mail');
delete_site_option('notify_users_mail');
delete_option('notify_users_subject_post');
delete_site_option('notify_users_subject_post');
delete_option('notify_users_body_post');
delete_site_option('notify_users_body_post');
delete_option('notify_users_subject_comment');
delete_site_option('notify_users_subject_comment');
delete_option('notify_users_body_comment');
delete_site_option('notify_users_body_comment');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_notify_users_email_sended' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_notify_users_email_sended' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_notify_users_email_sended' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_notify_users_email_sended' ) );

