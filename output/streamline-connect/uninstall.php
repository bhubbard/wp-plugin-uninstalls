<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('streamlineconnect_settings');
delete_site_option('streamlineconnect_settings');
delete_option('Streamlineconnect_api_key');
delete_site_option('Streamlineconnect_api_key');
delete_option('streamlineconnect_enable_widget');
delete_site_option('streamlineconnect_enable_widget');
delete_option('streamline_api_key');
delete_site_option('streamline_api_key');
delete_option('streamlineconnect_api_key_image');
delete_site_option('streamlineconnect_api_key_image');

// Delete Transients
delete_transient('settings_errors');
delete_site_transient('settings_errors');
delete_transient('streamline_subscription_status');
delete_site_transient('streamline_subscription_status');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'streamline_subscription_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'streamline_subscription_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'streamline_subscription_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'streamline_subscription_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'streamline_subscription_plan' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'streamline_subscription_plan' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'streamline_subscription_plan' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'streamline_subscription_plan' ) );

