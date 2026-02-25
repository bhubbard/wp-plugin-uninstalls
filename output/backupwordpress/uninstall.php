<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hmbkp_enable_support');
delete_site_option('hmbkp_enable_support');
delete_option('hmbkp_wp_cron_test_failed');
delete_site_option('hmbkp_wp_cron_test_failed');
delete_option('hmbkp_hide_info_notice');
delete_site_option('hmbkp_hide_info_notice');
delete_option('hmbkp_hide_rate_notice');
delete_site_option('hmbkp_hide_rate_notice');
delete_option('hmbkp_notices');
delete_site_option('hmbkp_notices');
delete_option('hmbkp_plugin_version');
delete_site_option('hmbkp_plugin_version');
delete_option('cron');
delete_site_option('cron');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'hmbkp_schedule_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpr_api_key');
delete_site_option('wpr_api_key');
delete_option('bkpwp_max_backups');
delete_site_option('bkpwp_max_backups');
delete_option('bkpwppath');
delete_site_option('bkpwppath');
delete_option('hmbkp_path');
delete_site_option('hmbkp_path');
delete_option('hmbkp_files_only');
delete_site_option('hmbkp_files_only');
delete_option('hmbkp_database_only');
delete_site_option('hmbkp_database_only');
delete_option('hmbkp_schedule_frequency');
delete_site_option('hmbkp_schedule_frequency');
delete_option('hmbkp_disable_automatic_backup');
delete_site_option('hmbkp_disable_automatic_backup');
delete_option('hmbkp_max_backups');
delete_site_option('hmbkp_max_backups');
delete_option('hmbkp_excludes');
delete_site_option('hmbkp_excludes');
delete_option('hmbkp_email_address');
delete_site_option('hmbkp_email_address');
delete_option('hmbkp_default_path');
delete_site_option('hmbkp_default_path');

// Delete Transients
delete_transient('hmbkp_root_size');
delete_site_transient('hmbkp_root_size');
delete_transient('hmbkp_wp_cron_test_beacon');
delete_site_transient('hmbkp_wp_cron_test_beacon');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_hm_backdrop-%', '_site_transient_hm_backdrop-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_bwp_%', '_site_transient_bwp_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('hmbkp_schedules');
delete_site_transient('hmbkp_schedules');
delete_transient('hmbkp_database_size');
delete_site_transient('hmbkp_database_size');
delete_transient('hmbkp_directory_filesizes_running');
delete_site_transient('hmbkp_directory_filesizes_running');
delete_transient('hmbkp_plugin_data');
delete_site_transient('hmbkp_plugin_data');
delete_transient('hmbkp_directory_filesizes');
delete_site_transient('hmbkp_directory_filesizes');
delete_transient('hmbkp_settings_errors');
delete_site_transient('hmbkp_settings_errors');

// Clear Cron Jobs
wp_clear_scheduled_hook('hmbkp_schedule_hook');
wp_clear_scheduled_hook('bkpwp_schedule_bkpwp_hook');

