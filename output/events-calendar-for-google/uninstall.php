<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gc_general_settings');
delete_site_option('gc_general_settings');
delete_option('gc_event_attributes');
delete_site_option('gc_event_attributes');
delete_option('gc_advanced_settings');
delete_site_option('gc_advanced_settings');
delete_option('gc_pro_features');
delete_site_option('gc_pro_features');
delete_option('my_timezone_option');
delete_site_option('my_timezone_option');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ecfg_activated_on' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ecfg_activated_on' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ecfg_activated_on' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ecfg_activated_on' ) );

