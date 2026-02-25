<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('authyo_otp_mf_settings');
delete_site_option('authyo_otp_mf_settings');
delete_option('authyo_otp_mf_form_settings');
delete_site_option('authyo_otp_mf_form_settings');
delete_option('authyo_otp_mf_country_list');
delete_site_option('authyo_otp_mf_country_list');
delete_option('authyo_otp_mf_country_list_updated_at');
delete_site_option('authyo_otp_mf_country_list_updated_at');
delete_option('authyo_mf_email_subscription_dismissed');
delete_site_option('authyo_mf_email_subscription_dismissed');
delete_option('authyo_mf_email_subscription_completed');
delete_site_option('authyo_mf_email_subscription_completed');
delete_option('authyo_otp_mf_entry_file_index');
delete_site_option('authyo_otp_mf_entry_file_index');

// Delete Transients
delete_transient('authyo_mf_show_email_subscription');
delete_site_transient('authyo_mf_show_email_subscription');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_authyo_otp_mf_verified_%', '_site_transient_authyo_otp_mf_verified_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%:email', '_site_transient_%:email' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

