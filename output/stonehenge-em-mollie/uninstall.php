<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('em_mollie_api_key');
delete_site_option('em_mollie_api_key');
delete_option('dbem_multiple_bookings');
delete_site_option('dbem_multiple_bookings');
delete_option('dbem_date_format');
delete_site_option('dbem_date_format');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('em_mollie_description');
delete_site_option('em_mollie_description');
delete_option('mollie_activated_methods');
delete_site_option('mollie_activated_methods');
delete_option('em_mollie_form');
delete_site_option('em_mollie_form');
delete_option('em_mollie_show_methods');
delete_site_option('em_mollie_show_methods');
delete_option('dbem_bookings_currency');
delete_site_option('dbem_bookings_currency');
delete_option('em_mollie_message_redirect');
delete_site_option('em_mollie_message_redirect');
delete_option('em_mollie_message_free');
delete_site_option('em_mollie_message_free');
delete_option('em_mollie_return_page');
delete_site_option('em_mollie_return_page');
delete_option('dbem_events_page');
delete_site_option('dbem_events_page');
delete_option('dbem_booking_feedback');
delete_site_option('dbem_booking_feedback');
delete_option('dbem_booking_feedback_error');
delete_site_option('dbem_booking_feedback_error');
delete_option('dbem_booking_feedback_pending');
delete_site_option('dbem_booking_feedback_pending');
delete_option('em_mollie_status_text');
delete_site_option('em_mollie_status_text');
delete_option('em_mollie_show_status');
delete_site_option('em_mollie_show_status');
delete_option('em_mollie_show_feedback');
delete_site_option('em_mollie_show_feedback');
delete_option('em_mollie_send_cancel_mail');
delete_site_option('em_mollie_send_cancel_mail');

