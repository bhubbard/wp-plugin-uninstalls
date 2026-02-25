<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mo_azure_admin_email');
delete_site_option('mo_azure_admin_email');
delete_option('mo_azure_admin_password');
delete_site_option('mo_azure_admin_password');
delete_option('mo_azos_admin_email');
delete_site_option('mo_azos_admin_email');
delete_option('mo_saml_admin_password');
delete_site_option('mo_saml_admin_password');
delete_option('manual');
delete_site_option('manual');
delete_option('automatic');
delete_site_option('automatic');
delete_option('push_user_to_ad');
delete_site_option('push_user_to_ad');
delete_option('mo_saml_admin_email');
delete_site_option('mo_saml_admin_email');
delete_option('mo_saml_admin_phone');
delete_site_option('mo_saml_admin_phone');
delete_option('host_name');
delete_site_option('host_name');
delete_option('mo_azos_application_config');
delete_site_option('mo_azos_application_config');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'AD_SYNC_ID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'AD_SYNC_ID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'AD_SYNC_ID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'AD_SYNC_ID' ) );

