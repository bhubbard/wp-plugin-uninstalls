<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mycred_eventsmanager_gateway_prefs');
delete_site_option('mycred_eventsmanager_gateway_prefs');
delete_option('dbem_multiple_bookings');
delete_site_option('dbem_multiple_bookings');
delete_option('dbem_bookings_currency');
delete_site_option('dbem_bookings_currency');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_manual_approval' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('dbem_bookings_approval');
delete_site_option('dbem_bookings_approval');
delete_option('dbem_bookings_anonymous');
delete_site_option('dbem_bookings_anonymous');
delete_option('dbem_bookings_registration_disable');
delete_site_option('dbem_bookings_registration_disable');
delete_option('dbem_bookings_currency_decimal_point');
delete_site_option('dbem_bookings_currency_decimal_point');
delete_option('dbem_bookings_currency_thousands_sep');
delete_site_option('dbem_bookings_currency_thousands_sep');
delete_option('dbem_bookings_currency_format');
delete_site_option('dbem_bookings_currency_format');
delete_option('em_mycred_checkout_option_name');
delete_site_option('em_mycred_checkout_option_name');
delete_option('em_mycred_checkout_booking_feedback');
delete_site_option('em_mycred_checkout_booking_feedback');
delete_option('em_mycred_checkout_booking_feedback_free');
delete_site_option('em_mycred_checkout_booking_feedback_free');
delete_option('em_mycred_checkout_button');
delete_site_option('em_mycred_checkout_button');
delete_option('em_mycred_checkout_booking_feedback_completed');
delete_site_option('em_mycred_checkout_booking_feedback_completed');
delete_option('em_mycred_checkout_booking_feedback_cancelled');
delete_site_option('em_mycred_checkout_booking_feedback_cancelled');
delete_option('em_mycred_checkout_inc_tax');
delete_site_option('em_mycred_checkout_inc_tax');
delete_option('em_mycred_checkout_reserve_pending');
delete_site_option('em_mycred_checkout_reserve_pending');
delete_option('em_offline_booking_feedback');
delete_site_option('em_offline_booking_feedback');
delete_option('em_mycred_elements_option_name');
delete_site_option('em_mycred_elements_option_name');
delete_option('em_mycred_elements_booking_feedback');
delete_site_option('em_mycred_elements_booking_feedback');
delete_option('em_mycred_elements_booking_feedback_free');
delete_site_option('em_mycred_elements_booking_feedback_free');
delete_option('em_mycred_elements_booking_feedback_completed');
delete_site_option('em_mycred_elements_booking_feedback_completed');
delete_option('em_mycred_elements_booking_feedback_cancelled');
delete_site_option('em_mycred_elements_booking_feedback_cancelled');
delete_option('em_mycred_elements_inc_tax');
delete_site_option('em_mycred_elements_inc_tax');
delete_option('em_mycred_elements_reserve_pending');
delete_site_option('em_mycred_elements_reserve_pending');
delete_option('emp_mycred_version');
delete_site_option('emp_mycred_version');
delete_option('em_mycred_checkout_api');
delete_site_option('em_mycred_checkout_api');
delete_option('em_mycred_elements_api');
delete_site_option('em_mycred_elements_api');
delete_option('em_mycred_elements_mode');
delete_site_option('em_mycred_elements_mode');
delete_option('em_mycred_checkout_mode');
delete_site_option('em_mycred_checkout_mode');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'mycred_tickets_reward_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'mycred_tickets_reward_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'mycred_tickets_reward_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'mycred_tickets_reward_%' ) );

