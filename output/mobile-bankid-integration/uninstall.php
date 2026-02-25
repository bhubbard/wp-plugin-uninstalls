<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mobile_bankid_integration_env');
delete_site_option('mobile_bankid_integration_env');
delete_option('mobile_bankid_integration_certificate');
delete_site_option('mobile_bankid_integration_certificate');
delete_option('mobile_bankid_integration_password');
delete_site_option('mobile_bankid_integration_password');
delete_option('mobile_bankid_integration_wplogin');
delete_site_option('mobile_bankid_integration_wplogin');
delete_option('mobile_bankid_integration_registration');
delete_site_option('mobile_bankid_integration_registration');
delete_option('mobile_bankid_integration_terms');
delete_site_option('mobile_bankid_integration_terms');
delete_option('mobile_bankid_integration_session_secret');
delete_site_option('mobile_bankid_integration_session_secret');
delete_option('mobile_bankid_integration_woocommerce_login');
delete_site_option('mobile_bankid_integration_woocommerce_login');
delete_option('mobile_bankid_integration_woocommerce_checkout_require_bankid');
delete_site_option('mobile_bankid_integration_woocommerce_checkout_require_bankid');
delete_option('mobile_bankid_integration_woocommerce_age_check');
delete_site_option('mobile_bankid_integration_woocommerce_age_check');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mobile_bankid_integration_personal_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mobile_bankid_integration_personal_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mobile_bankid_integration_personal_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mobile_bankid_integration_personal_number' ) );

