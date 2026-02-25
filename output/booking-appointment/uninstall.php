<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('booking_appointment_email_data');
delete_site_option('booking_appointment_email_data');
delete_option('booking_appointment_settings_data');
delete_site_option('booking_appointment_settings_data');
delete_option('booking_appointment_configuration');
delete_site_option('booking_appointment_configuration');
delete_option('booking_appointment_payments_data');
delete_site_option('booking_appointment_payments_data');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'managetoplevel_page_bookings_tablecolumnshidden' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'managetoplevel_page_bookings_tablecolumnshidden' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'managetoplevel_page_bookings_tablecolumnshidden' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'managetoplevel_page_bookings_tablecolumnshidden' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'managetoplevel_page_holidays_tablecolumnshidden' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'managetoplevel_page_holidays_tablecolumnshidden' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'managetoplevel_page_holidays_tablecolumnshidden' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'managetoplevel_page_holidays_tablecolumnshidden' ) );

