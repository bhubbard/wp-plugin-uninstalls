<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('greenmetrics_settings');
delete_site_option('greenmetrics_settings');
delete_option('greenmetrics_db_error');
delete_site_option('greenmetrics_db_error');
delete_option('greenmetrics_aggregated_db_error');
delete_site_option('greenmetrics_aggregated_db_error');
delete_option('greenmetrics_version');
delete_site_option('greenmetrics_version');
delete_option('greenmetrics_all_cache_last_update');
delete_site_option('greenmetrics_all_cache_last_update');
delete_option('greenmetrics_table_columns');
delete_site_option('greenmetrics_table_columns');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_greenmetrics_table_exists_%', '_site_transient_greenmetrics_table_exists_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('greenmetrics_cleanup_charts');
wp_clear_scheduled_hook('greenmetrics_data_management');
wp_clear_scheduled_hook('greenmetrics_send_email_report');
wp_clear_scheduled_hook('greenmetrics_daily_cache_refresh');

