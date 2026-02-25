<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mobsms_customer_key');
delete_site_option('mobsms_customer_key');
delete_option('mobsms_phone_meta_key');
delete_site_option('mobsms_phone_meta_key');
delete_option('mobsms_api_key');
delete_site_option('mobsms_api_key');
delete_option('mobsms_verify_customer');
delete_site_option('mobsms_verify_customer');
delete_option('mobsms_email');
delete_site_option('mobsms_email');
delete_option('mobsms_customer_token');
delete_site_option('mobsms_customer_token');
delete_option('mobsms_admin_phone');
delete_site_option('mobsms_admin_phone');
delete_option('mobsms_app_secret');
delete_site_option('mobsms_app_secret');
delete_option('mobsms_activated_time');
delete_site_option('mobsms_activated_time');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'user_nicename' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'user_nicename' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'user_nicename' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'user_nicename' ) );

