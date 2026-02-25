<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('htsec_nvd_api_key');
delete_site_option('htsec_nvd_api_key');
delete_option('htsec_check_progress');
delete_site_option('htsec_check_progress');
delete_option('htsec_vulnerabilities');
delete_site_option('htsec_vulnerabilities');
delete_option('htsec_last_cve_check');
delete_site_option('htsec_last_cve_check');
delete_option('htsec_enable_cve_alerts');
delete_site_option('htsec_enable_cve_alerts');
delete_option('htsec_alert_email');
delete_site_option('htsec_alert_email');
delete_option('htsec_enable_login_alerts');
delete_site_option('htsec_enable_login_alerts');
delete_option('htsec_maintenance_mode');
delete_site_option('htsec_maintenance_mode');
delete_option('htsec_maintenance_ips');
delete_site_option('htsec_maintenance_ips');
delete_option('htsec_show_plugin_badges');
delete_site_option('htsec_show_plugin_badges');
delete_option('htsec_enable_headers');
delete_site_option('htsec_enable_headers');
delete_option('htsec_disable_user_enumeration');
delete_site_option('htsec_disable_user_enumeration');

// Clear Cron Jobs
wp_clear_scheduled_hook('htsec_cve_check_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'htsec_dismissed_error_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'htsec_dismissed_error_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'htsec_dismissed_error_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'htsec_dismissed_error_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'htsec_dismissed_success_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'htsec_dismissed_success_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'htsec_dismissed_success_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'htsec_dismissed_success_notice' ) );

