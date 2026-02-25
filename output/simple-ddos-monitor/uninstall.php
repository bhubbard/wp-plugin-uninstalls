<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ddos_monitor_urls');
delete_site_option('ddos_monitor_urls');
delete_option('ddos_monitor_enable_email');
delete_site_option('ddos_monitor_enable_email');
delete_option('ddos_monitor_email');
delete_site_option('ddos_monitor_email');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ddos_monitor_status_%', '_site_transient_ddos_monitor_status_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('ddos_monitor_background_running');
delete_site_transient('ddos_monitor_background_running');

// Clear Cron Jobs
wp_clear_scheduled_hook('ddos_monitor_hook');

