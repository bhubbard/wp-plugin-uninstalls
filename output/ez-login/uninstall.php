<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ez_google_client_id');
delete_site_option('ez_google_client_id');
delete_option('ez_google_client_secret');
delete_site_option('ez_google_client_secret');
delete_option('ez_sms_username');
delete_site_option('ez_sms_username');
delete_option('ez_sms_password');
delete_site_option('ez_sms_password');
delete_option('ez_sms_number');
delete_site_option('ez_sms_number');
delete_option('ez_sms_timer_duration');
delete_site_option('ez_sms_timer_duration');
delete_option('ez_sms_max_attempts');
delete_site_option('ez_sms_max_attempts');
delete_option('ez_sms_block_duration');
delete_site_option('ez_sms_block_duration');
delete_option('ez_sms_send_mode');
delete_site_option('ez_sms_send_mode');
delete_option('ez_sms_pattern_code');
delete_site_option('ez_sms_pattern_code');
delete_option('ez_sms_provider');
delete_site_option('ez_sms_provider');
delete_option('ezlogin_custom_css');
delete_site_option('ezlogin_custom_css');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ez_sms_blocked_until_%', '_site_transient_ez_sms_blocked_until_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ez_sms_last_otp_%', '_site_transient_ez_sms_last_otp_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ez_sms_otp_%', '_site_transient_ez_sms_otp_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ez_sms_test_otp_%', '_site_transient_ez_sms_test_otp_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

