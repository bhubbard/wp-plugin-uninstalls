<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpbel-version');
delete_site_option('wpbel-version');
delete_option('wpbe_update_table_log');
delete_site_option('wpbe_update_table_log');
delete_option('it_black_friday_banner_dismissed');
delete_site_option('it_black_friday_banner_dismissed');
delete_option('wpbe_active_post_type');
delete_site_option('wpbe_active_post_type');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_background_process_error' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_background_process_process_lock' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_background_process_try_again' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('itbbc_scheduler_version');
delete_site_option('itbbc_scheduler_version');
delete_option('wpbel_some_setting');
delete_site_option('wpbel_some_setting');
delete_option('wpbel_usage_track');
delete_site_option('wpbel_usage_track');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_email_subscription_sent' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ithemeland_activation_email');
delete_site_option('ithemeland_activation_email');
delete_option('wpbel_onboarding');
delete_site_option('wpbel_onboarding');
delete_option('wpbel_opt_in');
delete_site_option('wpbel_opt_in');
delete_option('wpbe_active_count_undo');
delete_site_option('wpbe_active_count_undo');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

