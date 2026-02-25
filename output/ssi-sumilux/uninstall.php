<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ssi_debug_mode');
delete_site_option('ssi_debug_mode');
delete_option('ssi_debug_app_secret');
delete_site_option('ssi_debug_app_secret');
delete_option('ssi_debug_widget_name');
delete_site_option('ssi_debug_widget_name');
delete_option('ssi_app_secret');
delete_site_option('ssi_app_secret');
delete_option('ssi_widget_name');
delete_site_option('ssi_widget_name');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ssi_uid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ssi_uid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ssi_uid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ssi_uid' ) );

