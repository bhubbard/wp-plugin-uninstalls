<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smarcltr_options');
delete_site_option('smarcltr_options');
delete_option('smarcltr_db_version');
delete_site_option('smarcltr_db_version');

// Delete Transients
delete_transient('smarcltr_all_trackers');
delete_site_transient('smarcltr_all_trackers');
delete_transient('smarcltr_dashboard_stats');
delete_site_transient('smarcltr_dashboard_stats');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_smarcltr_tracker_stats_%', '_site_transient_smarcltr_tracker_stats_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('smarcltr_cleanup');

