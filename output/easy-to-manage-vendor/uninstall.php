<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('emv_default_country_select');
delete_site_option('emv_default_country_select');
delete_option('EMV_admin_phone_number');
delete_site_option('EMV_admin_phone_number');
delete_option('emv_enable_automatic_sms');
delete_site_option('emv_enable_automatic_sms');
delete_option('emv_enable_vendor_automatic_sms');
delete_site_option('emv_enable_vendor_automatic_sms');
delete_option('emv_disable_vendor_chat');
delete_site_option('emv_disable_vendor_chat');
delete_option('emv_enable_edit_mode');
delete_site_option('emv_enable_edit_mode');
delete_option('EMV_version');
delete_site_option('EMV_version');
delete_option('EMV_install_time');
delete_site_option('EMV_install_time');
delete_option('emv_run_first_time');
delete_site_option('emv_run_first_time');
delete_option('emv_message_subject');
delete_site_option('emv_message_subject');
delete_option('emv_message_desc');
delete_site_option('emv_message_desc');
delete_option('emv_enable_api_edit_mode');
delete_site_option('emv_enable_api_edit_mode');
delete_option('EMV_active');
delete_site_option('EMV_active');
delete_option('emv_per_page');
delete_site_option('emv_per_page');
delete_option('emv_custom_css');
delete_site_option('emv_custom_css');
delete_option('emv_select_api');
delete_site_option('emv_select_api');
delete_option('emv_twilio_account_sid');
delete_site_option('emv_twilio_account_sid');
delete_option('emv_twilio_auth_token');
delete_site_option('emv_twilio_auth_token');
delete_option('emv_twilio_sender_number');
delete_site_option('emv_twilio_sender_number');
delete_option('emv_ultramsg_instance_id');
delete_site_option('emv_ultramsg_instance_id');
delete_option('emv_ultramsg_auth_token');
delete_site_option('emv_ultramsg_auth_token');
delete_option('wcfm_endpoints');
delete_site_option('wcfm_endpoints');
delete_option('emv_hide_phone_number');
delete_site_option('emv_hide_phone_number');
delete_option('emv_disable_vendor_number_Forcibly');
delete_site_option('emv_disable_vendor_number_Forcibly');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'EMV_phone_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'EMV_phone_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'EMV_phone_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'EMV_phone_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'emv_user_sms_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'emv_user_sms_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'emv_user_sms_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'emv_user_sms_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'EMV_current_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'EMV_current_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'EMV_current_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'EMV_current_message' ) );

