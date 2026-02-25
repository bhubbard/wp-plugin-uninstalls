<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('f12_cf7_doubleoptin_installed_at');
delete_site_option('f12_cf7_doubleoptin_installed_at');
delete_option('f12-doi-settings');
delete_site_option('f12-doi-settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('f12_cf7_doubleoptin_installation_uuid');
delete_site_option('f12_cf7_doubleoptin_installation_uuid');
delete_option('f12_cf7_doubleoptin_telemetry_counters');
delete_site_option('f12_cf7_doubleoptin_telemetry_counters');
delete_option('f12_cf7_doubleoptin_review_dismissed');
delete_site_option('f12_cf7_doubleoptin_review_dismissed');
delete_option('f12_cf7_doubleoptin_review_remind_later');
delete_site_option('f12_cf7_doubleoptin_review_remind_later');
delete_option('f12_cf7_doubleoptin_review_remind_count');
delete_site_option('f12_cf7_doubleoptin_review_remind_count');

// Clear Cron Jobs
wp_clear_scheduled_hook('f12_cf7_doubleoptin_daily_telemetry');
wp_clear_scheduled_hook('dailyOptinClear');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'f12-cf7-doubleoptin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'f12-cf7-doubleoptin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'f12-cf7-doubleoptin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'f12-cf7-doubleoptin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );

