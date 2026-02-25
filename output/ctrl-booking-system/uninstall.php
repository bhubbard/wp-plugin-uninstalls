<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ctrlbs_settings');
delete_site_option('ctrlbs_settings');
delete_option('ctrlbs_donation_notice_shown');
delete_site_option('ctrlbs_donation_notice_shown');
delete_option('ctrlbs_donation_notice_dismissed');
delete_site_option('ctrlbs_donation_notice_dismissed');

// Delete Transients
delete_transient('ctrlbs_cache');
delete_site_transient('ctrlbs_cache');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ctrlbs_rate_limit_%', '_site_transient_ctrlbs_rate_limit_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ctrlbs_rate_limit_time_%', '_site_transient_ctrlbs_rate_limit_time_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ctrlbs_throttle_%', '_site_transient_ctrlbs_throttle_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('ctrlbs_daily_cleanup');

