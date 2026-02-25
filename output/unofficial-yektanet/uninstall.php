<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yektanet_do_activation_redirect');
delete_site_option('yektanet_do_activation_redirect');
delete_option('active_yektanet_plugin');
delete_site_option('active_yektanet_plugin');
delete_option('yektanet_app_id');
delete_site_option('yektanet_app_id');
delete_option('YEKTANET_PLUGIN_VERSION');
delete_site_option('YEKTANET_PLUGIN_VERSION');
delete_option('yektanet_method');
delete_site_option('yektanet_method');
delete_option('unofficialYektanetScript');
delete_site_option('unofficialYektanetScript');
delete_option('unofficialYektanetProductBrand');
delete_site_option('unofficialYektanetProductBrand');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'yektanet_view_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'yektanet_view_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'yektanet_view_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'yektanet_view_count' ) );

