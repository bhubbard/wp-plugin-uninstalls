<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hpulr_restricted_roles');
delete_site_option('hpulr_restricted_roles');
delete_option('hpulr_hidden_price_message');
delete_site_option('hpulr_hidden_price_message');
delete_option('hpulr_test_mode');
delete_site_option('hpulr_test_mode');
delete_option('hpulr_allowed_countries');
delete_site_option('hpulr_allowed_countries');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_hpulr_custom_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_hpulr_custom_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_hpulr_custom_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_hpulr_custom_message' ) );

