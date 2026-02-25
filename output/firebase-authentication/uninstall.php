<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mo_fb_host_name');
delete_site_option('mo_fb_host_name');
delete_option('mo_firebase_authentication_admin_email');
delete_site_option('mo_firebase_authentication_admin_email');
delete_option('mo_firebase_authentication_admin_phone');
delete_site_option('mo_firebase_authentication_admin_phone');
delete_option('password');
delete_site_option('password');
delete_option('mo_firebase_authentication_admin_fname');
delete_site_option('mo_firebase_authentication_admin_fname');
delete_option('mo_firebase_authentication_admin_lname');
delete_site_option('mo_firebase_authentication_admin_lname');
delete_option('mo_firebase_authentication_admin_company');
delete_site_option('mo_firebase_authentication_admin_company');
delete_option('mo_firebase_authentication_admin_customer_key');
delete_site_option('mo_firebase_authentication_admin_customer_key');
delete_option('mo_firebase_authentication_admin_api_key');
delete_site_option('mo_firebase_authentication_admin_api_key');
delete_option('mo_firebase_authentication_lk');
delete_site_option('mo_firebase_authentication_lk');
delete_option('mo_firebase_authentication_new_registration');
delete_site_option('mo_firebase_authentication_new_registration');
delete_option('mo_firebase_authentication_verify_customer');
delete_site_option('mo_firebase_authentication_verify_customer');
delete_option('mo_firebase_authentication_email');
delete_site_option('mo_firebase_authentication_email');
delete_option('mo_enable_firebase_auth');
delete_site_option('mo_enable_firebase_auth');
delete_option('mo_firebase_auth_disable_wordpress_login');
delete_site_option('mo_firebase_auth_disable_wordpress_login');
delete_option('mo_firebase_auth_enable_admin_wp_login');
delete_site_option('mo_firebase_auth_enable_admin_wp_login');
delete_option('mo_firebase_auth_project_id');
delete_site_option('mo_firebase_auth_project_id');
delete_option('mo_firebase_auth_api_key');
delete_site_option('mo_firebase_auth_api_key');
delete_option('mo_firebase_auth_cert1');
delete_site_option('mo_firebase_auth_cert1');
delete_option('mo_firebase_auth_cert2');
delete_site_option('mo_firebase_auth_cert2');
delete_option('mo_firebase_auth_cert3');
delete_site_option('mo_firebase_auth_cert3');
delete_option('mo_firebase_auth_kid1');
delete_site_option('mo_firebase_auth_kid1');
delete_option('mo_firebase_auth_kid2');
delete_site_option('mo_firebase_auth_kid2');
delete_option('mo_firebase_auth_kid3');
delete_site_option('mo_firebase_auth_kid3');
delete_option('mo_firebase_authentication_current_plugin_version');
delete_site_option('mo_firebase_authentication_current_plugin_version');
delete_option('mo_firebase_authentication_lv');
delete_site_option('mo_firebase_authentication_lv');
delete_option('mo_firebase_authentication_customer_token');
delete_site_option('mo_firebase_authentication_customer_token');
delete_option('mo_firebase_auth_message');
delete_site_option('mo_firebase_auth_message');
delete_option('mo_firebase_authentication_registration_status');
delete_site_option('mo_firebase_authentication_registration_status');
delete_option('message');
delete_site_option('message');
delete_option(' mo_firebase_authentication_lv');
delete_site_option(' mo_firebase_authentication_lv');
delete_option(' mo_firebase_authentication_lk');
delete_site_option(' mo_firebase_authentication_lk');
delete_option('mo_firebase_authentication_new_customer');
delete_site_option('mo_firebase_authentication_new_customer');
delete_option('mo_firebase_authentication_current_plugin_version ');
delete_site_option('mo_firebase_authentication_current_plugin_version ');
delete_option('mo_firebase_auth_woocommerce_intigration');
delete_site_option('mo_firebase_auth_woocommerce_intigration');
delete_option('mo_enable_firebase_auto_register');
delete_site_option('mo_enable_firebase_auto_register');
delete_option('mo_firebase_auth_buddypress_intigration');
delete_site_option('mo_firebase_auth_buddypress_intigration');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mo_firebase_user_dn' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mo_firebase_user_dn' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mo_firebase_user_dn' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mo_firebase_user_dn' ) );

