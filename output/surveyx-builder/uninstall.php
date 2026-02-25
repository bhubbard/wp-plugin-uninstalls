<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('surveyx_settings');
delete_site_option('surveyx_settings');
delete_option('surveyx_db_version');
delete_site_option('surveyx_db_version');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_surveyx_summary_%', '_site_transient_surveyx_summary_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('surveyx_templates');
delete_site_transient('surveyx_templates');

// Clear Cron Jobs
wp_clear_scheduled_hook('surveyx_process_sessions_hourly');

