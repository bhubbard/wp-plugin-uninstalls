<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('booking_admin_email');
delete_site_option('booking_admin_email');
delete_option('booking_form_page');
delete_site_option('booking_form_page');
delete_option('booking_order_page');
delete_site_option('booking_order_page');
delete_option('booking_thankyou_page');
delete_site_option('booking_thankyou_page');
delete_option('book_open_till');
delete_site_option('book_open_till');
delete_option('booking_admin_email_from_name');
delete_site_option('booking_admin_email_from_name');
delete_option('schd_booking_price');
delete_site_option('schd_booking_price');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'booking_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'booking_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'booking_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'booking_address' ) );

