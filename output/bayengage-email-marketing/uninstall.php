<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('BEM_JUST_INSTALLED');
delete_site_option('BEM_JUST_INSTALLED');
delete_option('BEM_CONNECTION_USER_ID');
delete_site_option('BEM_CONNECTION_USER_ID');
delete_option('bem_redirect_url');
delete_site_option('bem_redirect_url');
delete_option('BEM_CONNECTION_DEACTIVATE_USER_ID');
delete_site_option('BEM_CONNECTION_DEACTIVATE_USER_ID');
delete_option('bem_woo_sms_optin_status');
delete_site_option('bem_woo_sms_optin_status');
delete_option('BEM_CONNECTION_STATUS');
delete_site_option('BEM_CONNECTION_STATUS');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_capabilities' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_capabilities' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_capabilities' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_capabilities' ) );

