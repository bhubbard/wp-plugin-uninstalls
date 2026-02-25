<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wilo_dash_integration_enabled');
delete_site_option('wilo_dash_integration_enabled');
delete_option('wilo_secret_key');
delete_site_option('wilo_secret_key');
delete_option('wilo_acf_integration');
delete_site_option('wilo_acf_integration');
delete_option('wilo_exclusions');
delete_site_option('wilo_exclusions');
delete_option('wilo_already_installed');
delete_site_option('wilo_already_installed');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wilo_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wilo_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wilo_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wilo_keywords' ) );

