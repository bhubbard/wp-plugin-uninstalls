<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('authora_sms_driver');
delete_site_option('authora_sms_driver');
delete_option('authora_smsir_api_key');
delete_site_option('authora_smsir_api_key');
delete_option('authora_smsir_template_id');
delete_site_option('authora_smsir_template_id');
delete_option('authora_farazsms_api_key');
delete_site_option('authora_farazsms_api_key');
delete_option('authora_farazsms_pattern_code');
delete_site_option('authora_farazsms_pattern_code');
delete_option('authora_farazsms_sender_number');
delete_site_option('authora_farazsms_sender_number');
delete_option('authora_shahvar_api_key');
delete_site_option('authora_shahvar_api_key');
delete_option('authora_shahvar_sender_number');
delete_site_option('authora_shahvar_sender_number');
delete_option('authora_shahvar_pattern_code');
delete_site_option('authora_shahvar_pattern_code');
delete_option('authora_enable_mobile_login');
delete_site_option('authora_enable_mobile_login');
delete_option('authora_enable_woo_mobile_login');
delete_site_option('authora_enable_woo_mobile_login');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mobile' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mobile' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mobile' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mobile' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

