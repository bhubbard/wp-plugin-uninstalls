<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dbem_multiple_bookings');
delete_site_option('dbem_multiple_bookings');
delete_option('dbem_bookings_approval');
delete_site_option('dbem_bookings_approval');
delete_option('dbem_bookings_anonymous');
delete_site_option('dbem_bookings_anonymous');
delete_option('dbem_bookings_registration_disable');
delete_site_option('dbem_bookings_registration_disable');
delete_option('dbem_bookings_currency');
delete_site_option('dbem_bookings_currency');
delete_option('eway_logging');
delete_site_option('eway_logging');
delete_option('eway_form_country');
delete_site_option('eway_form_country');
delete_option('eway_form_first_name');
delete_site_option('eway_form_first_name');
delete_option('eway_form_last_name');
delete_site_option('eway_form_last_name');
delete_option('eway_form_address');
delete_site_option('eway_form_address');
delete_option('eway_form_city');
delete_site_option('eway_form_city');
delete_option('eway_form_state');
delete_site_option('eway_form_state');
delete_option('eway_form_post_code');
delete_site_option('eway_form_post_code');
delete_option('eway_form_email');
delete_site_option('eway_form_email');
delete_option('wpsc_merchant_eway_stored');
delete_site_option('wpsc_merchant_eway_stored');
delete_option('eway_test');
delete_site_option('eway_test');
delete_option('custom_gateway_options');
delete_site_option('custom_gateway_options');
delete_option('wpsc_merchant_eway_th');
delete_site_option('wpsc_merchant_eway_th');
delete_option('wpsc_merchant_eway_card_msg');
delete_site_option('wpsc_merchant_eway_card_msg');
delete_option('wpsc_merchant_eway_beagle');
delete_site_option('wpsc_merchant_eway_beagle');
delete_option('eway_api_key');
delete_site_option('eway_api_key');
delete_option('eway_password');
delete_site_option('eway_password');
delete_option('eway_ecrypt_key');
delete_site_option('eway_ecrypt_key');
delete_option('eway_sandbox_api_key');
delete_site_option('eway_sandbox_api_key');
delete_option('eway_sandbox_password');
delete_site_option('eway_sandbox_password');
delete_option('eway_sandbox_ecrypt_key');
delete_site_option('eway_sandbox_ecrypt_key');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'eway_form_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_eway_payments_settings');
delete_site_option('woocommerce_eway_payments_settings');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'awpcp-profile' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'awpcp-profile' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'awpcp-profile' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'awpcp-profile' ) );

