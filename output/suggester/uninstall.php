<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'suggester_tool_stats_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('suggester_tool_counter');
delete_site_option('suggester_tool_counter');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'suggester_tool_settings_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('suggester_monthly_actions');
delete_site_option('suggester_monthly_actions');
delete_option('suggester_monthly_reset_date');
delete_site_option('suggester_monthly_reset_date');
delete_option('suggester_copy_migration_done');
delete_site_option('suggester_copy_migration_done');
delete_option('suggester_arabic_loaded');
delete_site_option('suggester_arabic_loaded');
delete_option('suggester_global_settings');
delete_site_option('suggester_global_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'suggester_key_stats_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('suggester_version');
delete_site_option('suggester_version');
delete_option('suggester_daily_count');
delete_site_option('suggester_daily_count');
delete_option('suggester_weekly_count');
delete_site_option('suggester_weekly_count');
delete_option('suggester_monthly_count');
delete_site_option('suggester_monthly_count');
delete_option('suggester_yearly_count');
delete_site_option('suggester_yearly_count');
delete_option('suggester_last_reset_dates');
delete_site_option('suggester_last_reset_dates');

// Delete Transients
delete_transient('suggester_admin_message');
delete_site_transient('suggester_admin_message');
delete_transient('suggester_last_key_index_global');
delete_site_transient('suggester_last_key_index_global');
delete_transient('suggester_key_error_global_gemini_0');
delete_site_transient('suggester_key_error_global_gemini_0');
delete_transient('suggester_key_error_global_openrouter_1');
delete_site_transient('suggester_key_error_global_openrouter_1');
delete_transient('suggester_key_error_global_openrouter_2');
delete_site_transient('suggester_key_error_global_openrouter_2');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_suggester_last_key_index_%', '_site_transient_suggester_last_key_index_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_gemini_0', '_site_transient_%_gemini_0' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_openrouter_1', '_site_transient_%_openrouter_1' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_openrouter_2', '_site_transient_%_openrouter_2' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('suggester_cleanup_errors');
wp_clear_scheduled_hook('suggester_cleanup_usage');

