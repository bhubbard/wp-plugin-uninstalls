<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'installed_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('dex_appointments_data');
delete_site_option('dex_appointments_data');
delete_option('calendar_language');
delete_site_option('calendar_language');
delete_option('calendar_dateformat');
delete_site_option('calendar_dateformat');
delete_option('calendar_militarytime');
delete_site_option('calendar_militarytime');
delete_option('calendar_weekday');
delete_site_option('calendar_weekday');
delete_option('calendar_mindate');
delete_site_option('calendar_mindate');
delete_option('calendar_maxdate');
delete_site_option('calendar_maxdate');
delete_option('calendar_pages');
delete_site_option('calendar_pages');
delete_option('enable_paypal');
delete_site_option('enable_paypal');
delete_option('paypal_email');
delete_site_option('paypal_email');
delete_option('request_cost');
delete_site_option('request_cost');
delete_option('paypal_product_name');
delete_site_option('paypal_product_name');
delete_option('currency');
delete_site_option('currency');
delete_option('url_ok');
delete_site_option('url_ok');
delete_option('url_cancel');
delete_site_option('url_cancel');
delete_option('paypal_language');
delete_site_option('paypal_language');
delete_option('notification_from_email');
delete_site_option('notification_from_email');
delete_option('notification_destination_email');
delete_site_option('notification_destination_email');
delete_option('email_subject_confirmation_to_user');
delete_site_option('email_subject_confirmation_to_user');
delete_option('email_confirmation_to_user');
delete_site_option('email_confirmation_to_user');
delete_option('email_subject_notification_to_admin');
delete_site_option('email_subject_notification_to_admin');
delete_option('email_notification_to_admin');
delete_site_option('email_notification_to_admin');

