<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tracking_ready_text');
delete_site_option('tracking_ready_text');
delete_option('mail_send_general');
delete_site_option('mail_send_general');
delete_option('sms_provider');
delete_site_option('sms_provider');
delete_option('sms_send_general');
delete_site_option('sms_send_general');
delete_option('BsmsApp_UserName');
delete_site_option('BsmsApp_UserName');
delete_option('BsmsApp_Password');
delete_site_option('BsmsApp_Password');
delete_option('BsmsApp_Header');
delete_site_option('BsmsApp_Header');
delete_option('BsmsApp_sms_url_send');
delete_site_option('BsmsApp_sms_url_send');
delete_option('BsmsApp_footer');
delete_site_option('BsmsApp_footer');
delete_option('BsmsApp_sender');
delete_site_option('BsmsApp_sender');
delete_option('BsmsApp_type');
delete_site_option('BsmsApp_type');
delete_option('Bsmsapp_sim');
delete_site_option('Bsmsapp_sim');
delete_option('Bsmsapp_mode');
delete_site_option('Bsmsapp_mode');
delete_option('Bsmsapp_device');
delete_site_option('Bsmsapp_device');
delete_option('Bsmsapp_deviceid');
delete_site_option('Bsmsapp_deviceid');
delete_option('Bsmsapp_waid');
delete_site_option('Bsmsapp_waid');
delete_option('BsmsApp_m1');
delete_site_option('BsmsApp_m1');
delete_option('BsmsApp_m2');
delete_site_option('BsmsApp_m2');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'tracking_company' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'tracking_company' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'tracking_company' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'tracking_company' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'tracking_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'tracking_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'tracking_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'tracking_code' ) );

