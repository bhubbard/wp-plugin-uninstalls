<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('better_analytics');
delete_site_option('better_analytics');
delete_option('ba_site_tokens');
delete_site_option('ba_site_tokens');
delete_option('ba_tokens');
delete_site_option('ba_tokens');
delete_option('better_analytics_site');
delete_site_option('better_analytics_site');
delete_option('ba_dashboard_pick');
delete_site_option('ba_dashboard_pick');

// Delete Transients
delete_transient('ba_int');
delete_site_transient('ba_int');
delete_transient('ba_last_error');
delete_site_transient('ba_last_error');
delete_transient('ba_exp_live');
delete_site_transient('ba_exp_live');
delete_transient('ba_realtime');
delete_site_transient('ba_realtime');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ba_stats_%', '_site_transient_ba_stats_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('better_analytics_cron_minutely');
wp_clear_scheduled_hook('better_analytics_cron_hourly');

