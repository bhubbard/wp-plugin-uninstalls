<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('codshield_store_id');
delete_site_option('codshield_store_id');
delete_option('codshield_registered_site_url');
delete_site_option('codshield_registered_site_url');
delete_option('codshield_license_key');
delete_site_option('codshield_license_key');
delete_option('codshield_registered_email');
delete_site_option('codshield_registered_email');
delete_option('twilio_sid');
delete_site_option('twilio_sid');
delete_option('twilio_token');
delete_site_option('twilio_token');
delete_option('twilio_whatsapp_number');
delete_site_option('twilio_whatsapp_number');
delete_option(' codshield_registered_site_url');
delete_site_option(' codshield_registered_site_url');
delete_option('codshield_store_count');
delete_site_option('codshield_store_count');
delete_option('codshield_license_token');
delete_site_option('codshield_license_token');
delete_option('codshield_license_status');
delete_site_option('codshield_license_status');
delete_option('codshield_license_usage_count');
delete_site_option('codshield_license_usage_count');
delete_option('codshield_plan_code');
delete_site_option('codshield_plan_code');
delete_option('codshield_admin_user_id');
delete_site_option('codshield_admin_user_id');
delete_option('codshield_admin_user_name');
delete_site_option('codshield_admin_user_name');
delete_option('codshield_admin_user_email');
delete_site_option('codshield_admin_user_email');
delete_option('codshield_fraud_usage_count');
delete_site_option('codshield_fraud_usage_count');
delete_option('codshield_confirmation_usage_count');
delete_site_option('codshield_confirmation_usage_count');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_customer_ip_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_customer_ip_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_customer_ip_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_customer_ip_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_codshield_custom_api_last' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_codshield_custom_api_last' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_codshield_custom_api_last' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_codshield_custom_api_last' ) );

