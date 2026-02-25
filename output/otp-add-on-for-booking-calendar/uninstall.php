<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpbc_otp_method');
delete_site_option('wpbc_otp_method');
delete_option('wpbc_sms_api_key');
delete_site_option('wpbc_sms_api_key');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wpbc_booking_otp_%', '_site_transient_wpbc_booking_otp_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

