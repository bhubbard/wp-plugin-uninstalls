<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('church_tithe_wp_wizard_status');
delete_site_option('church_tithe_wp_wizard_status');
delete_option('church_tithe_wp_settings');
delete_site_option('church_tithe_wp_settings');
delete_option('ctwp_scsr');
delete_site_option('ctwp_scsr');
delete_option('sendgrid_api_key');
delete_site_option('sendgrid_api_key');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_db_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ctwp_threshold_reset');
delete_site_option('ctwp_threshold_reset');
delete_option('church_tithe_wp_just_activated');
delete_site_option('church_tithe_wp_just_activated');
delete_option('church_tithe_wp_stripe_country_code');
delete_site_option('church_tithe_wp_stripe_country_code');
delete_option('church_tithe_wp_stripe_available_currencies');
delete_site_option('church_tithe_wp_stripe_available_currencies');
delete_option('church_tithe_wp_stripe_product_id');
delete_site_option('church_tithe_wp_stripe_product_id');

// Delete Transients
delete_transient('church_tithe_wp_mail_health_check_token');
delete_site_transient('church_tithe_wp_mail_health_check_token');
delete_transient('church_tithe_wp_mail_health_check_success_redirect');
delete_site_transient('church_tithe_wp_mail_health_check_success_redirect');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_church_tithe_wp_login_code_%', '_site_transient_church_tithe_wp_login_code_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_church_tithe_wp_login_code_requests_%', '_site_transient_church_tithe_wp_login_code_requests_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_mode', '_site_transient_%_mode' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'church_tithe_wp_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'church_tithe_wp_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'church_tithe_wp_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'church_tithe_wp_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'church_tithe_wp_login_attempts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'church_tithe_wp_login_attempts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'church_tithe_wp_login_attempts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'church_tithe_wp_login_attempts' ) );

