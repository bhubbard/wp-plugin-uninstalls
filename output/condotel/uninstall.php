<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('condotel_total_units');
delete_site_option('condotel_total_units');
delete_option('condotel_max_stay');
delete_site_option('condotel_max_stay');
delete_option('condotel_guest_tracking');
delete_site_option('condotel_guest_tracking');
delete_option('condotel_notify_email');
delete_site_option('condotel_notify_email');
delete_option('condotel_email_enabled');
delete_site_option('condotel_email_enabled');
delete_option('condotel_allow_unit_edit');
delete_site_option('condotel_allow_unit_edit');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'Unit_Number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'Unit_Number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'Unit_Number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'Unit_Number' ) );

