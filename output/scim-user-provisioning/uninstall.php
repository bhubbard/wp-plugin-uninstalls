<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('msup_scim_show_attribute');
delete_site_option('msup_scim_show_attribute');
delete_option('msup_scim_test_config_attrs');
delete_site_option('msup_scim_test_config_attrs');
delete_option('msup_scim_up_host_name');
delete_site_option('msup_scim_up_host_name');
delete_option('msup_scim_up_message');
delete_site_option('msup_scim_up_message');
delete_option('msup_scim_idp_name');
delete_site_option('msup_scim_idp_name');
delete_option('msup_scim_up_bearer_token');
delete_site_option('msup_scim_up_bearer_token');
delete_option('msup_scim_up_admin_email');
delete_site_option('msup_scim_up_admin_email');
delete_option('msup_scim_up_admin_phone');
delete_site_option('msup_scim_up_admin_phone');
delete_option('msup_scim_up_error_message');
delete_site_option('msup_scim_up_error_message');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'msup_scim_user_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'msup_scim_user_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'msup_scim_user_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'msup_scim_user_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%capabilities' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%capabilities' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%capabilities' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%capabilities' ) );

