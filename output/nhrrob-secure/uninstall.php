<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nhrrob_secure_limit_login_attempts');
delete_site_option('nhrrob_secure_limit_login_attempts');
delete_option('nhrrob_secure_login_attempts_limit');
delete_site_option('nhrrob_secure_login_attempts_limit');
delete_option('nhrrob_secure_custom_login_page');
delete_site_option('nhrrob_secure_custom_login_page');
delete_option('nhrrob_secure_custom_login_url');
delete_site_option('nhrrob_secure_custom_login_url');
delete_option('nhrrob_secure_protect_debug_log');
delete_site_option('nhrrob_secure_protect_debug_log');
delete_option('nhrrob_secure_enable_proxy_ip');
delete_site_option('nhrrob_secure_enable_proxy_ip');
delete_option('nhrrob_secure_enable_2fa');
delete_site_option('nhrrob_secure_enable_2fa');
delete_option('nhrrob_secure_2fa_enforced_roles');
delete_site_option('nhrrob_secure_2fa_enforced_roles');
delete_option('nhrrob_secure_2fa_type');
delete_site_option('nhrrob_secure_2fa_type');
delete_option('nhrrob_secure_dark_mode');
delete_site_option('nhrrob_secure_dark_mode');
delete_option('nhrrob_secure_log_retention_days');
delete_site_option('nhrrob_secure_log_retention_days');
delete_option('nhrrob_secure_disable_xmlrpc');
delete_site_option('nhrrob_secure_disable_xmlrpc');
delete_option('nhrrob_secure_disable_file_editor');
delete_site_option('nhrrob_secure_disable_file_editor');
delete_option('nhrrob_secure_hide_wp_version');
delete_site_option('nhrrob_secure_hide_wp_version');
delete_option('nhrrob_secure_disable_rest_users');
delete_site_option('nhrrob_secure_disable_rest_users');
delete_option('nhrrob_secure_firewall_blocked_uas');
delete_site_option('nhrrob_secure_firewall_blocked_uas');
delete_option('nhrrob_secure_idle_timeout');
delete_site_option('nhrrob_secure_idle_timeout');
delete_option('nhrrob_secure_enable_advanced_firewall');
delete_site_option('nhrrob_secure_enable_advanced_firewall');
delete_option('nhrrob_secure_ip_whitelist');
delete_site_option('nhrrob_secure_ip_whitelist');
delete_option('nhrrob_secure_ip_blacklist');
delete_site_option('nhrrob_secure_ip_blacklist');
delete_option('nhrrob_secure_blocked_countries');
delete_site_option('nhrrob_secure_blocked_countries');
delete_option('nhrrob_secure_audit_log_version');
delete_site_option('nhrrob_secure_audit_log_version');

// Delete Transients
delete_transient('nhrrob_secure_vulnerability_results');
delete_site_transient('nhrrob_secure_vulnerability_results');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_nhrrob_2fa_raw_codes_%', '_site_transient_nhrrob_2fa_raw_codes_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_nhrrob_2fa_%', '_site_transient_nhrrob_2fa_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_nhrrob_2fa_otp_%', '_site_transient_nhrrob_2fa_otp_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('nhrrob_secure_vulnerability_scan_cron');
wp_clear_scheduled_hook('nhrrob_secure_daily_cleanup');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'nhrrob_secure_last_activity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'nhrrob_secure_last_activity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'nhrrob_secure_last_activity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'nhrrob_secure_last_activity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'nhrrob_secure_2fa_secret' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'nhrrob_secure_2fa_secret' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'nhrrob_secure_2fa_secret' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'nhrrob_secure_2fa_secret' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'nhrrob_secure_2fa_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'nhrrob_secure_2fa_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'nhrrob_secure_2fa_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'nhrrob_secure_2fa_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'nhrrob_secure_2fa_recovery_codes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'nhrrob_secure_2fa_recovery_codes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'nhrrob_secure_2fa_recovery_codes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'nhrrob_secure_2fa_recovery_codes' ) );

