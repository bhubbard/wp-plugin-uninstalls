<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('whp_fixer_option');
delete_site_option('whp_fixer_option');
delete_option('whp_admin_page');
delete_site_option('whp_admin_page');
delete_option('whp_radio_clickjacking_protection');
delete_site_option('whp_radio_clickjacking_protection');
delete_option('whp_xss_protection');
delete_site_option('whp_xss_protection');
delete_option('whp_content_sniffing_protection');
delete_site_option('whp_content_sniffing_protection');
delete_option('whp_http_secure_flag');
delete_site_option('whp_http_secure_flag');
delete_option('whp_custom_admin_report_email');
delete_site_option('whp_custom_admin_report_email');
delete_option('whp_custom_admin_schedule_audit');
delete_site_option('whp_custom_admin_schedule_audit');
delete_option('custom_admin_report_email');
delete_site_option('custom_admin_report_email');
delete_option('whp_scan_results');
delete_site_option('whp_scan_results');
delete_option('whp_scan_results_time');
delete_site_option('whp_scan_results_time');
delete_option('whp_redirect');
delete_site_option('whp_redirect');
delete_option('hard_cron');
delete_site_option('hard_cron');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_options' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_php_check_%', '_site_transient_php_check_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('whp_task_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'whp_subscribed_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'whp_subscribed_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'whp_subscribed_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'whp_subscribed_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'hide_secure_subs' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'hide_secure_subs' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'hide_secure_subs' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'hide_secure_subs' ) );

