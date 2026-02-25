<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sso_for_azure_ad_client_id');
delete_site_option('sso_for_azure_ad_client_id');
delete_option('sso_for_azure_ad_client_secret');
delete_site_option('sso_for_azure_ad_client_secret');
delete_option('sso_for_azure_ad_tenant_id');
delete_site_option('sso_for_azure_ad_tenant_id');
delete_option('sso_for_azure_ad_require_post_start');
delete_site_option('sso_for_azure_ad_require_post_start');
delete_option('sso_for_azure_ad_use_post_callback');
delete_site_option('sso_for_azure_ad_use_post_callback');
delete_option('sso_for_azure_ad_create_users');
delete_site_option('sso_for_azure_ad_create_users');
delete_option('sso_for_azure_ad_new_usernames_no_domain');
delete_site_option('sso_for_azure_ad_new_usernames_no_domain');
delete_option('sso_for_azure_ad_populate_new_profiles');
delete_site_option('sso_for_azure_ad_populate_new_profiles');
delete_option('sso_for_azure_ad_role_new_profile');
delete_site_option('sso_for_azure_ad_role_new_profile');
delete_option('sso_for_azure_ad_login_button_hide');
delete_site_option('sso_for_azure_ad_login_button_hide');
delete_option('sso_for_azure_ad_login_button_text');
delete_site_option('sso_for_azure_ad_login_button_text');
delete_option('sso_for_azure_ad_enable_rewrites');
delete_site_option('sso_for_azure_ad_enable_rewrites');
delete_option('sso_for_azure_ad_scope');
delete_site_option('sso_for_azure_ad_scope');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'default_password_nag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'default_password_nag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'default_password_nag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'default_password_nag' ) );

