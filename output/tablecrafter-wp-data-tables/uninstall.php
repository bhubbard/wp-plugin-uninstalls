<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tc_tracked_urls');
delete_site_option('tc_tracked_urls');
delete_option('tablecrafter_collaboration_enabled');
delete_site_option('tablecrafter_collaboration_enabled');
delete_option('tablecrafter_collaboration_logging');
delete_site_option('tablecrafter_collaboration_logging');
delete_option('tablecrafter_collaboration_logs');
delete_site_option('tablecrafter_collaboration_logs');
delete_option('tablecrafter_airtable_token');
delete_site_option('tablecrafter_airtable_token');
delete_option('tc_do_activation_redirect');
delete_site_option('tc_do_activation_redirect');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_tc_cache_%', '_site_transient_tc_cache_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_tc_export_%', '_site_transient_tc_export_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('tablecrafter_cleanup_collaboration_sessions');
wp_clear_scheduled_hook('tc_cleanup_export_files');
wp_clear_scheduled_hook('tc_refresher_cron');
wp_clear_scheduled_hook('tc_refresh_single_source');

