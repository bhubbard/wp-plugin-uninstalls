<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mo_web3_new_registration');
delete_site_option('mo_web3_new_registration');
delete_option('mo_web3_verify_customer');
delete_site_option('mo_web3_verify_customer');
delete_option('mo_web3_registration_status');
delete_site_option('mo_web3_registration_status');
delete_option('mo_web3_host_name');
delete_site_option('mo_web3_host_name');
delete_option('mo_web3_admin_email');
delete_site_option('mo_web3_admin_email');
delete_option('mo_web3_admin_phone');
delete_site_option('mo_web3_admin_phone');
delete_option('mo_web3_admin_customer_key');
delete_site_option('mo_web3_admin_customer_key');
delete_option('mo_web3_admin_api_key');
delete_site_option('mo_web3_admin_api_key');
delete_option('mo_web3_customer_token');
delete_site_option('mo_web3_customer_token');
delete_option('mo_web3_new_customer');
delete_site_option('mo_web3_new_customer');
delete_option('mo_web3_message');
delete_site_option('mo_web3_message');
delete_option('mo_web3_display_login_button');
delete_site_option('mo_web3_display_login_button');
delete_option('mo_web3_nft_settings');
delete_site_option('mo_web3_nft_settings');
delete_option('mo_web3_button_custom_text');
delete_site_option('mo_web3_button_custom_text');
delete_option('mo_web3_display_multiple_button');
delete_site_option('mo_web3_display_multiple_button');
delete_option('mo_web3_plugin_version');
delete_site_option('mo_web3_plugin_version');
delete_option('mo_web3_demosite_trial_info');
delete_site_option('mo_web3_demosite_trial_info');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wallet_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wallet_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wallet_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wallet_address' ) );

