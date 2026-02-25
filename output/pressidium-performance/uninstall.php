<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pressidium_performance_activated');
delete_site_option('pressidium_performance_activated');
delete_option('pressidium_performance_settings');
delete_site_option('pressidium_performance_settings');
delete_option('pressidium_performance_table_versions');
delete_site_option('pressidium_performance_table_versions');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('pressidium_performance_clean_up_cron_job');

