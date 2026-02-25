<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yourwebshield_risk_threshold');
delete_site_option('yourwebshield_risk_threshold');
delete_option('yourwebshield_max_requests');
delete_site_option('yourwebshield_max_requests');
delete_option('yourwebshield_window_ms');
delete_site_option('yourwebshield_window_ms');
delete_option('yourwebshield_waf_enabled');
delete_site_option('yourwebshield_waf_enabled');
delete_option('yourwebshield_waf_sql_enabled');
delete_site_option('yourwebshield_waf_sql_enabled');
delete_option('yourwebshield_waf_xss_enabled');
delete_site_option('yourwebshield_waf_xss_enabled');
delete_option('yourwebshield_waf_common_enabled');
delete_site_option('yourwebshield_waf_common_enabled');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_yourwebshield_ip_%', '_site_transient_yourwebshield_ip_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('yourwebshield_send_logged_ips_event');

