<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zerospam_configured');
delete_site_option('zerospam_configured');
delete_option('zerospam_activation_time');
delete_site_option('zerospam_activation_time');
delete_option('zerospam_api_monitoring_notice_dismissed');
delete_site_option('zerospam_api_monitoring_notice_dismissed');
delete_option('zerospam_blocked_email_domains');
delete_site_option('zerospam_blocked_email_domains');
delete_option('disallowed_keys');
delete_site_option('disallowed_keys');
delete_option('zero-spam-settings');
delete_site_option('zero-spam-settings');
delete_option('wpzerospam_honeypot');
delete_site_option('wpzerospam_honeypot');
delete_option('zerospam_api_notices');
delete_site_option('zerospam_api_notices');
delete_option('zerospam_db_version');
delete_site_option('zerospam_db_version');
delete_option('zerospam_network_notifications_enabled');
delete_site_option('zerospam_network_notifications_enabled');
delete_option('zerospam_network_settings_notifications_enabled');
delete_site_option('zerospam_network_settings_notifications_enabled');
delete_option('zero-spam-last-update');
delete_site_option('zero-spam-last-update');
delete_option('wpzerospam');
delete_site_option('wpzerospam');
delete_option('zero-spam-zerospam');
delete_site_option('zero-spam-zerospam');
delete_option('zero-spam-network-zerospam');
delete_site_option('zero-spam-network-zerospam');
delete_option('zerospam_settings_audit');
delete_site_option('zerospam_settings_audit');
delete_option('zero-spam-api-monitoring');
delete_site_option('zero-spam-api-monitoring');
delete_option('zero-spam-debug');
delete_site_option('zero-spam-debug');
delete_option('zero-spam-google');
delete_site_option('zero-spam-google');
delete_option('zero-spam-ipinfo');
delete_site_option('zero-spam-ipinfo');
delete_option('zero-spam-ipstack');
delete_site_option('zero-spam-ipstack');
delete_option('zero-spam-project_honeypot');
delete_site_option('zero-spam-project_honeypot');
delete_option('zero-spam-stop_forum_spam');
delete_site_option('zero-spam-stop_forum_spam');
delete_option('zero_spam_last_api_request');
delete_site_option('zero_spam_last_api_request');
delete_option('zero-spam-comments');
delete_site_option('zero-spam-comments');
delete_option('zero-spam-contactform7');
delete_site_option('zero-spam-contactform7');
delete_option('zero-spam-davidwalsh');
delete_site_option('zero-spam-davidwalsh');
delete_option('zerospam_davidwalsh');
delete_site_option('zerospam_davidwalsh');
delete_option('zero-spam-elementor');
delete_site_option('zero-spam-elementor');
delete_option('zero-spam-fluent_form');
delete_site_option('zero-spam-fluent_form');
delete_option('zero-spam-formidable');
delete_site_option('zero-spam-formidable');
delete_option('zero-spam-givewp');
delete_site_option('zero-spam-givewp');
delete_option('zero-spam-gravityforms');
delete_site_option('zero-spam-gravityforms');
delete_option('zero-spam-ipbase');
delete_site_option('zero-spam-ipbase');
delete_option('zero-spam-login');
delete_site_option('zero-spam-login');
delete_option('zero-spam-mailchimp4wp');
delete_site_option('zero-spam-mailchimp4wp');
delete_option('zero-spam-registration');
delete_site_option('zero-spam-registration');
delete_option('zero-spam-security');
delete_site_option('zero-spam-security');
delete_option('zero-spam-woocommerce');
delete_site_option('zero-spam-woocommerce');
delete_option('zero-spam-wpforms');
delete_site_option('zero-spam-wpforms');
delete_option('zero-spam-wp-user-avatar');
delete_site_option('zero-spam-wp-user-avatar');
delete_option('zero_spam_last_api_report');
delete_site_option('zero_spam_last_api_report');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_zerospam_promo_shown_%', '_site_transient_zerospam_promo_shown_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('zerospam_dashboard_data');
delete_site_transient('zerospam_dashboard_data');
delete_transient('zero_spam_circuit_open');
delete_site_transient('zero_spam_circuit_open');
delete_transient('zero_spam_failure_count');
delete_site_transient('zero_spam_failure_count');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_zerospam_login_intent_%', '_site_transient_zerospam_login_intent_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('zerospam_network_weekly_summary');
wp_clear_scheduled_hook('zerospam_check_api_anomalies');
wp_clear_scheduled_hook('zerospam_aggregate_api_data');
wp_clear_scheduled_hook('zerospam_aggregate_daily_stats');
wp_clear_scheduled_hook('zerospam_async_share_detection');
wp_clear_scheduled_hook('zerospam_api_usage_cleanup');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'zerospam_promo_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'zerospam_promo_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'zerospam_promo_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'zerospam_promo_dismissed' ) );

