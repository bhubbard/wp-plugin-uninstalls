<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shadowscan_last_error');
delete_site_option('shadowscan_last_error');
delete_option('shadowscan_sentry_telemetry_enabled');
delete_site_option('shadowscan_sentry_telemetry_enabled');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_shadowscan_mfa_notice_%', '_site_transient_shadowscan_mfa_notice_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('update_core');
delete_site_transient('update_core');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('shadowscan_heartbeat_lock');
delete_site_transient('shadowscan_heartbeat_lock');
delete_transient('shadowscan_pair_notice');
delete_site_transient('shadowscan_pair_notice');
delete_transient('shadowscan_pair_notice_type');
delete_site_transient('shadowscan_pair_notice_type');

// Clear Cron Jobs
wp_clear_scheduled_hook('shadowscan_emergency_heartbeat');
wp_clear_scheduled_hook('shadowscan_heartbeat');
wp_clear_scheduled_hook('shadowscan_poll_commands');
wp_clear_scheduled_hook('shadowscan_integrity_scan');
wp_clear_scheduled_hook('shadowscan_integrity_targeted_scan');
wp_clear_scheduled_hook('shadowscan_owasp_daily_check');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'shadowscan_locked_until' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'shadowscan_locked_until' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'shadowscan_locked_until' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'shadowscan_locked_until' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'shadowscan_lock_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'shadowscan_lock_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'shadowscan_lock_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'shadowscan_lock_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'shadowscan_lock_reason' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'shadowscan_lock_reason' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'shadowscan_lock_reason' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'shadowscan_lock_reason' ) );

