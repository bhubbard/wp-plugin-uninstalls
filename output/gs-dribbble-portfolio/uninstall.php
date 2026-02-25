<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('op_client');
delete_site_option('op_client');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_last_send' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_skipped' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_allow_tracking' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_notice' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('gspdribbble_activation_redirect');
delete_site_option('gspdribbble_activation_redirect');
delete_option('gs_dribb_active_time');
delete_site_option('gs_dribb_active_time');
delete_option('gs_dribb_review_dismiss');
delete_site_option('gs_dribb_review_dismiss');
delete_option('gs_dribb_maybe_later');
delete_site_option('gs_dribb_maybe_later');

// Delete Transients
delete_transient('gsplugins-pro-plugins');
delete_site_transient('gsplugins-pro-plugins');
delete_transient('gsplugins_free_plugins');
delete_site_transient('gsplugins_free_plugins');

// Clear Cron Jobs

