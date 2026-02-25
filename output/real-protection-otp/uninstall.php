<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('safeg_setting');
delete_site_option('safeg_setting');
delete_option('enable_plugin');
delete_site_option('enable_plugin');
delete_option('otp_enable');
delete_site_option('otp_enable');
delete_option('email_otp_disable');
delete_site_option('email_otp_disable');
delete_option('get_post');
delete_site_option('get_post');
delete_option('otp_woo_alert');
delete_site_option('otp_woo_alert');
delete_option('woo_pending_alert');
delete_site_option('woo_pending_alert');
delete_option('woo_processing_alert');
delete_site_option('woo_processing_alert');
delete_option('woo_hold_alert');
delete_site_option('woo_hold_alert');
delete_option('woo_fail_alert');
delete_site_option('woo_fail_alert');
delete_option('woo_cancel_alert');
delete_site_option('woo_cancel_alert');
delete_option('woo_complete_alert');
delete_site_option('woo_complete_alert');
delete_option('woo_refund_alert');
delete_site_option('woo_refund_alert');
delete_option('woo_partially_alert');
delete_site_option('woo_partially_alert');
delete_option('woo_shipped_alert');
delete_site_option('woo_shipped_alert');
delete_option('user_reg_alert');
delete_site_option('user_reg_alert');
delete_option('safeg_db_version');
delete_site_option('safeg_db_version');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'safeg_phone_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'safeg_phone_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'safeg_phone_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'safeg_phone_number' ) );

