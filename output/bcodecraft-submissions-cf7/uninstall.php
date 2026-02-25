<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bccs_activated');
delete_site_option('bccs_activated');
delete_option('bccs_version');
delete_site_option('bccs_version');
delete_option('bccs_retention_days');
delete_site_option('bccs_retention_days');
delete_option('bccs_enable_logging');
delete_site_option('bccs_enable_logging');
delete_option('bccs_enable_charts');
delete_site_option('bccs_enable_charts');
delete_option('bccs_frontend_integration');
delete_site_option('bccs_frontend_integration');
delete_option('bccs_login_integration');
delete_site_option('bccs_login_integration');
delete_option('bccs_cf7_status');
delete_site_option('bccs_cf7_status');
delete_option('bccs_db_version');
delete_site_option('bccs_db_version');
delete_option('bccs_activated_time');
delete_site_option('bccs_activated_time');

// Delete Transients
delete_transient('bccs_admin_notice');
delete_site_transient('bccs_admin_notice');
delete_transient('bccs_stats_cache');
delete_site_transient('bccs_stats_cache');
delete_transient('bccs_show_ready_notice');
delete_site_transient('bccs_show_ready_notice');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_bccs_stats_%', '_site_transient_bccs_stats_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('bccs_stats_all');
delete_site_transient('bccs_stats_all');
delete_transient('bccs_stats');
delete_site_transient('bccs_stats');

// Clear Cron Jobs
wp_clear_scheduled_hook('bccs_db_cleanup');
wp_clear_scheduled_hook('bccs_log_cleanup');
wp_clear_scheduled_hook('bccs_security_cleanup');
wp_clear_scheduled_hook('bccs_cleanup');

