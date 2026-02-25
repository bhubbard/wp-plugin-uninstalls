<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('veesing_sms_expire');
delete_site_option('veesing_sms_expire');
delete_option('veesing_template_register');
delete_site_option('veesing_template_register');
delete_option('veesing_sms_debug');
delete_site_option('veesing_sms_debug');
delete_option('veesing_sms_logs');
delete_site_option('veesing_sms_logs');
delete_option('veesing_sms_account');
delete_site_option('veesing_sms_account');
delete_option('veesing_sms_key');
delete_site_option('veesing_sms_key');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'user_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'user_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'user_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'user_phone' ) );

