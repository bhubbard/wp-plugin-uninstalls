<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
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
delete_option('gs_pinterest_settings');
delete_site_option('gs_pinterest_settings');
delete_option('gspin_upgraded_to_1_4_0');
delete_site_option('gspin_upgraded_to_1_4_0');
delete_option('gspin_active_time');
delete_site_option('gspin_active_time');
delete_option('gspin_review_dismiss');
delete_site_option('gspin_review_dismiss');
delete_option('gspin_maybe_later');
delete_site_option('gspin_maybe_later');
delete_option('gsadmin_active_time');
delete_site_option('gsadmin_active_time');
delete_option('gsadmin_maybe_later');
delete_site_option('gsadmin_maybe_later');
delete_option('gspin_activation_redirect');
delete_site_option('gspin_activation_redirect');
delete_option('gspin_shortcode_prefs');
delete_site_option('gspin_shortcode_prefs');

// Delete Transients
delete_transient('gsplugins-pro-plugins');
delete_site_transient('gsplugins-pro-plugins');
delete_transient('gsplugins_free_plugins');
delete_site_transient('gsplugins_free_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('gs_pinterest_pin_sync_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'gspin_ignore_notice279' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'gspin_ignore_notice279' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'gspin_ignore_notice279' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'gspin_ignore_notice279' ) );

