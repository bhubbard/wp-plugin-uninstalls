<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('authyo_otp_options');
delete_site_option('authyo_otp_options');
delete_option('authyo_nf_email_subscription_dismissed');
delete_site_option('authyo_nf_email_subscription_dismissed');
delete_option('authyo_nf_email_subscription_completed');
delete_site_option('authyo_nf_email_subscription_completed');

// Delete Transients
delete_transient('authyo_nf_trigger_tracking');
delete_site_transient('authyo_nf_trigger_tracking');
delete_transient('authyo_nf_show_email_subscription');
delete_site_transient('authyo_nf_show_email_subscription');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_authyo_verified_%', '_site_transient_authyo_verified_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_authyo_mask_%', '_site_transient_authyo_mask_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

