<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('health_monitor_options');
delete_site_option('health_monitor_options');
delete_option('health_monitor_account_settings');
delete_site_option('health_monitor_account_settings');
delete_option('health_monitor_last_email_sent_time');
delete_site_option('health_monitor_last_email_sent_time');
delete_option('woocommerce_db_version');
delete_site_option('woocommerce_db_version');
delete_option('auto_update_plugins');
delete_site_option('auto_update_plugins');
delete_option('health_monitor_version');
delete_site_option('health_monitor_version');

// Delete Transients
delete_transient('health_monitor_latest_wp_version');
delete_site_transient('health_monitor_latest_wp_version');
delete_transient('update_themes');
delete_site_transient('update_themes');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_health_monitor_latest_plugin_version_%', '_site_transient_health_monitor_latest_plugin_version_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('health_monitor_latest_curl_version');
delete_site_transient('health_monitor_latest_curl_version');
delete_transient('health_monitor_latest_mysql_version');
delete_site_transient('health_monitor_latest_mysql_version');
delete_transient('health_monitor_latest_php_version');
delete_site_transient('health_monitor_latest_php_version');
delete_transient('health_monitor_db_data_size');
delete_site_transient('health_monitor_db_data_size');
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('health_monitor_daily_lighthouse_scores');
wp_clear_scheduled_hook('health_monitor_hourly_check_email_notification');
wp_clear_scheduled_hook('health_monitor_cleanup_old_records');

