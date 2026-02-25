<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aicog_db_version');
delete_site_option('aicog_db_version');
delete_option('aicog_settings');
delete_site_option('aicog_settings');
delete_option('aicog_version');
delete_site_option('aicog_version');

// Delete Transients
delete_transient('aicog_connection_tested');
delete_site_transient('aicog_connection_tested');
delete_transient('aicog_last_error');
delete_site_transient('aicog_last_error');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_aicog_ai_processed_%', '_site_transient_aicog_ai_processed_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('aicog_cleanup');
wp_clear_scheduled_hook('aicog_daily_stats');

