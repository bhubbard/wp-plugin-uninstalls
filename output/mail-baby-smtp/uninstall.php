<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smtp_error_log');
delete_site_option('smtp_error_log');
delete_option('MAIL_BABY_SMTP_options');
delete_site_option('MAIL_BABY_SMTP_options');
delete_option('_wp_mailplus_from_info');
delete_site_option('_wp_mailplus_from_info');
delete_option('_wp_mailplus_enabled_service');
delete_site_option('_wp_mailplus_enabled_service');
delete_option('sib_use_apiv2');
delete_site_option('sib_use_apiv2');
delete_option('sib_old_form_id');
delete_site_option('sib_old_form_id');
delete_option('mailgun');
delete_site_option('mailgun');
delete_option('_wp_mailplus_service_info');
delete_site_option('_wp_mailplus_service_info');
delete_option('sib_subscription_option');
delete_site_option('sib_subscription_option');
delete_option('sib_signup_option');
delete_site_option('sib_signup_option');
delete_option('sib_confirm_option');
delete_site_option('sib_confirm_option');
delete_option('sib_home_option');
delete_site_option('sib_home_option');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_sib_credit_%', '_site_transient_sib_credit_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_sib_smtp_status_%', '_site_transient_sib_smtp_status_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_sib_attributes_%', '_site_transient_sib_attributes_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_sib_template_%', '_site_transient_sib_template_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_sib_list_%', '_site_transient_sib_list_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_sib_senders_%', '_site_transient_sib_senders_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_sib_totalusers_%', '_site_transient_sib_totalusers_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_sib_campaigns_%', '_site_transient_sib_campaigns_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('mbs_test_email_status');
delete_site_transient('mbs_test_email_status');
delete_transient('mbs_test_email_debug_log');
delete_site_transient('mbs_test_email_debug_log');

