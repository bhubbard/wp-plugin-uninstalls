<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lwtt_username');
delete_site_option('lwtt_username');
delete_option('lwtt_password');
delete_site_option('lwtt_password');
delete_option('enable_lwtt');
delete_site_option('enable_lwtt');
delete_option('lwtt_username_sina');
delete_site_option('lwtt_username_sina');
delete_option('lwtt_password_sina');
delete_site_option('lwtt_password_sina');
delete_option('lwtt_sina');
delete_site_option('lwtt_sina');
delete_option('lwtt_time');
delete_site_option('lwtt_time');
delete_option('lwtt_update_prefix');
delete_site_option('lwtt_update_prefix');
delete_option('lwtt_new_prefix');
delete_site_option('lwtt_new_prefix');
delete_option('lwtt_api');
delete_site_option('lwtt_api');
delete_option('lwtt_tags');
delete_site_option('lwtt_tags');
delete_option('lwtt_proxy');
delete_site_option('lwtt_proxy');
delete_option('lwtt_custom_proxy');
delete_site_option('lwtt_custom_proxy');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_lwtt_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_lwtt_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_lwtt_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_lwtt_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_lwtt_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_lwtt_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_lwtt_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_lwtt_text' ) );

