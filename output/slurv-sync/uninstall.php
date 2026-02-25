<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('slurv_partner_token');
delete_site_option('slurv_partner_token');
delete_option('slurv_partner_custom_sidebar_bg');
delete_site_option('slurv_partner_custom_sidebar_bg');
delete_option('slurv_partner_custom_link_color');
delete_site_option('slurv_partner_custom_link_color');
delete_option('slurv_partner_custom_logo');
delete_site_option('slurv_partner_custom_logo');
delete_option('slurv_disable_new_user_imports');
delete_site_option('slurv_disable_new_user_imports');
delete_option('slurv_subdomain');
delete_site_option('slurv_subdomain');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'slurv_login_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'slurv_login_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'slurv_login_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'slurv_login_token' ) );

