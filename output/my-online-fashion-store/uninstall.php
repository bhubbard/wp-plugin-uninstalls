<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('myofs_opt_expire');
delete_site_option('myofs_opt_expire');
delete_option('myofs_opt_data');
delete_site_option('myofs_opt_data');
delete_option('woocommerce_api_enabled');
delete_site_option('woocommerce_api_enabled');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('myofs_activation_redirect');
delete_site_option('myofs_activation_redirect');
delete_option('myofs_db_version');
delete_site_option('myofs_db_version');
delete_option('myofs_db_installed');
delete_site_option('myofs_db_installed');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'myofs_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'myofs_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'myofs_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'myofs_category' ) );

