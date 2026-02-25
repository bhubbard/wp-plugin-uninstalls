<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('storeui_license_key');
delete_site_option('storeui_license_key');
delete_option('storeui_wc_api_keys');
delete_site_option('storeui_wc_api_keys');
delete_option('storeui_app_password');
delete_site_option('storeui_app_password');
delete_option('storeui_debug_mode');
delete_site_option('storeui_debug_mode');
delete_option('storeui_license_active');
delete_site_option('storeui_license_active');

// Delete Transients
delete_transient('storeui_messages');
delete_site_transient('storeui_messages');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_application_passwords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_application_passwords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_application_passwords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_application_passwords' ) );

