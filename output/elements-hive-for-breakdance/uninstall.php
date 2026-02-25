<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eh_turnstile_site_key');
delete_site_option('eh_turnstile_site_key');
delete_option('eh_turnstile_secret_key');
delete_site_option('eh_turnstile_secret_key');
delete_option('eh_turnstile_breakdance_enabled');
delete_site_option('eh_turnstile_breakdance_enabled');
delete_option('eh_turnstile_breakdance_disabled_ids');
delete_site_option('eh_turnstile_breakdance_disabled_ids');
delete_option('eh_turnstile_verified');
delete_site_option('eh_turnstile_verified');
delete_option('eh_turnstile_last_error');
delete_site_option('eh_turnstile_last_error');
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

// Clear Cron Jobs

