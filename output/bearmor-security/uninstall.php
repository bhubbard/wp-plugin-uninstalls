<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bearmor_settings');
delete_site_option('bearmor_settings');
delete_option('bearmor_last_scan_time');
delete_site_option('bearmor_last_scan_time');
delete_option('bearmor_last_malware_scan');
delete_site_option('bearmor_last_malware_scan');
delete_option('bearmor_malware_scan_results');
delete_site_option('bearmor_malware_scan_results');
delete_option('bearmor_ip_whitelist');
delete_site_option('bearmor_ip_whitelist');
delete_option('bearmor_malware_scan_enabled');
delete_site_option('bearmor_malware_scan_enabled');
delete_option('bearmor_deep_scan_enabled');
delete_site_option('bearmor_deep_scan_enabled');
delete_option('bearmor_header_x_frame');
delete_site_option('bearmor_header_x_frame');
delete_option('bearmor_2fa_enabled');
delete_site_option('bearmor_2fa_enabled');
delete_option('bearmor_checksum_baseline_date');
delete_site_option('bearmor_checksum_baseline_date');
delete_option('bearmor_malware_whitelist');
delete_site_option('bearmor_malware_whitelist');
delete_option('bearmor_2fa_excluded_users');
delete_site_option('bearmor_2fa_excluded_users');
delete_option('bearmor_site_id');
delete_site_option('bearmor_site_id');
delete_option('bearmor_db_version');
delete_site_option('bearmor_db_version');
delete_option('bearmor_needs_baseline');
delete_site_option('bearmor_needs_baseline');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'bearmor_plugin_baseline_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('bearmor_last_uptime_sync');
delete_site_option('bearmor_last_uptime_sync');
delete_option('bearmor_scan_exclusions');
delete_site_option('bearmor_scan_exclusions');
delete_option('bearmor_wpconfig_baseline');
delete_site_option('bearmor_wpconfig_baseline');
delete_option('bearmor_muplugins_baseline');
delete_site_option('bearmor_muplugins_baseline');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'bearmor_theme_baseline_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('bearmor_last_scan_status');
delete_site_option('bearmor_last_scan_status');
delete_option('bearmor_header_content_type');
delete_site_option('bearmor_header_content_type');
delete_option('bearmor_header_referrer');
delete_site_option('bearmor_header_referrer');
delete_option('bearmor_header_permissions');
delete_site_option('bearmor_header_permissions');
delete_option('bearmor_header_xss');
delete_site_option('bearmor_header_xss');
delete_option('bearmor_hide_wp_version');
delete_site_option('bearmor_hide_wp_version');
delete_option('bearmor_block_user_enum');
delete_site_option('bearmor_block_user_enum');
delete_option('bearmor_disable_login_errors');
delete_site_option('bearmor_disable_login_errors');
delete_option('bearmor_disable_xmlrpc');
delete_site_option('bearmor_disable_xmlrpc');
delete_option('bearmor_force_ssl');
delete_site_option('bearmor_force_ssl');
delete_option('bearmor_plan');
delete_site_option('bearmor_plan');
delete_option('bearmor_last_verified');
delete_site_option('bearmor_last_verified');
delete_option('bearmor_grace_period');
delete_site_option('bearmor_grace_period');
delete_option('bearmor_login_events');
delete_site_option('bearmor_login_events');
delete_option('bearmor_login_anomalies');
delete_site_option('bearmor_login_anomalies');
delete_option('bearmor_site_id_created');
delete_site_option('bearmor_site_id_created');
delete_option('bearmor_license_key');
delete_site_option('bearmor_license_key');
delete_option('bearmor_registration_time');
delete_site_option('bearmor_registration_time');
delete_option('bearmor_last_vulnerability_scan');
delete_site_option('bearmor_last_vulnerability_scan');
delete_option('bearmor_notified_vulns');
delete_site_option('bearmor_notified_vulns');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_bearmor_core_checksums_%', '_site_transient_bearmor_core_checksums_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('bearmor_baseline_checked');
delete_site_transient('bearmor_baseline_checked');
delete_transient('bearmor_uploads_file_count');
delete_site_transient('bearmor_uploads_file_count');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_bearmor_2fa_code_%', '_site_transient_bearmor_2fa_code_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_bearmor_2fa_user_%', '_site_transient_bearmor_2fa_user_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_bearmor_batch_%', '_site_transient_bearmor_batch_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('bearmor_license_cache');
delete_site_transient('bearmor_license_cache');
delete_transient('bearmor_pro_enabled');
delete_site_transient('bearmor_pro_enabled');
delete_transient('bearmor_license_expires');
delete_site_transient('bearmor_license_expires');
delete_transient('bearmor_trial_requested');
delete_site_transient('bearmor_trial_requested');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_bearmor_lockout_email_%', '_site_transient_bearmor_lockout_email_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_bearmor_auto_disabling_%', '_site_transient_bearmor_auto_disabling_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('bearmor_scheduled_malware_scan');
wp_clear_scheduled_hook('bearmor_initial_baseline_scan');
wp_clear_scheduled_hook('bearmor_create_plugin_baseline');
wp_clear_scheduled_hook('bearmor_create_theme_baseline');
wp_clear_scheduled_hook('bearmor_cleanup_activity_log');
wp_clear_scheduled_hook('bearmor_cleanup_expired_blocks');
wp_clear_scheduled_hook('bearmor_daily_malware_scan');
wp_clear_scheduled_hook('bearmor_daily_integrity_check');
wp_clear_scheduled_hook('bearmor_daily_cleanup');
wp_clear_scheduled_hook('bearmor_daily_ai_analysis');
wp_clear_scheduled_hook('bearmor_weekly_deep_scan');
wp_clear_scheduled_hook('bearmor_hourly_uptime_sync');
wp_clear_scheduled_hook('bearmor_daily_vulnerability_scan');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'bearmor_2fa_remember_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'bearmor_2fa_remember_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'bearmor_2fa_remember_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'bearmor_2fa_remember_token' ) );

