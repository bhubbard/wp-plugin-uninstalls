<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('agentshop_settings');
delete_site_option('agentshop_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_transient_timeout_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('agentshop_activated');
delete_site_transient('agentshop_activated');
delete_transient('agentshop_oauth_state');
delete_site_transient('agentshop_oauth_state');
delete_transient('agentshop_sync_check');
delete_site_transient('agentshop_sync_check');
delete_transient('agentshop_wp_creds_attempted');
delete_site_transient('agentshop_wp_creds_attempted');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%standard', '_site_transient_%standard' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%full', '_site_transient_%full' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('agentshop_daily_sync');
wp_clear_scheduled_hook('agentshop_cleanup_transients');

