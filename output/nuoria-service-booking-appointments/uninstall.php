<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Nuoria_Service_Booking_Appointments_settings');
delete_site_option('Nuoria_Service_Booking_Appointments_settings');
delete_option('Nuoria_Service_Booking_Appointments_db_version');
delete_site_option('Nuoria_Service_Booking_Appointments_db_version');
delete_option('Nuoria_Service_Booking_Appointments_version');
delete_site_option('Nuoria_Service_Booking_Appointments_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('Nuoria_Service_Booking_Appointments_send_reminders');
wp_clear_scheduled_hook('Nuoria_Service_Booking_Appointments_cleanup_old_bookings');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_phone' ) );

