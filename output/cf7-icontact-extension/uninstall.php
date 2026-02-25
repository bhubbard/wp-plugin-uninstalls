<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('icf7ic');
delete_site_option('icf7ic');
delete_option('icf7ic_signals_data');
delete_site_option('icf7ic_signals_data');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'icf7ic_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('auto_update_plugins');
delete_site_option('auto_update_plugins');
delete_option('auto_update_core');
delete_site_option('auto_update_core');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('icf7ic_lists_cache');
delete_site_transient('icf7ic_lists_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('icf7ic_metrics_heartbeat');

