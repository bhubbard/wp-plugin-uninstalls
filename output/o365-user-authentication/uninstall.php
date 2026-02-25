<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('azure_login_setting_flow');
delete_site_option('azure_login_setting_flow');
delete_option('o365_user_auth_online_access_token');
delete_site_option('o365_user_auth_online_access_token');
delete_option('o365_userauth_verify_auth_flow');
delete_site_option('o365_userauth_verify_auth_flow');
delete_option('o365_base_plugin_is_verify');
delete_site_option('o365_base_plugin_is_verify');
delete_option('o365_settings');
delete_site_option('o365_settings');
delete_option('o365_user_auth_online_token_expires');
delete_site_option('o365_user_auth_online_token_expires');
delete_option('o365_user_auth_online_refresh_token');
delete_site_option('o365_user_auth_online_refresh_token');
delete_option('wpcf-usermeta');
delete_site_option('wpcf-usermeta');
delete_option('365_plugin_top_slug');
delete_site_option('365_plugin_top_slug');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'aaduserobjectid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'aaduserobjectid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'aaduserobjectid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'aaduserobjectid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'nickname' ) );

