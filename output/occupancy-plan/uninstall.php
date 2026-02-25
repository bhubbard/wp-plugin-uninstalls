<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('op_dashboard_widget_blocks');
delete_site_option('op_dashboard_widget_blocks');
delete_option('occupancy_plan_db_version');
delete_site_option('occupancy_plan_db_version');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_occupancy_plan_state_%', '_site_transient_occupancy_plan_state_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('occupancy_plan_cleanup_job');

