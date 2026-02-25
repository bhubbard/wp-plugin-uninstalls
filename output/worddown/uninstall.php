<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('modularity-options');
delete_site_option('modularity-options');
delete_option('worddown_last_export');
delete_site_option('worddown_last_export');
delete_option('worddown_settings');
delete_site_option('worddown_settings');
delete_option('worddown_current_export_id');
delete_site_option('worddown_current_export_id');
delete_option('worddown_export_completed_flag');
delete_site_option('worddown_export_completed_flag');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'worddown_export_status_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('worddown_export_cron');
wp_clear_scheduled_hook('worddown_process_export_chunk');

