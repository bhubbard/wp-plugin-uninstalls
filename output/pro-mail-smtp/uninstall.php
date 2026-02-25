<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pro_mail_smtp_active_plugins_list');
delete_site_option('pro_mail_smtp_active_plugins_list');
delete_option('pro_mail_smtp_retention_duration');
delete_site_option('pro_mail_smtp_retention_duration');
delete_option('pro_mail_smtp_gmail_access_token');
delete_site_option('pro_mail_smtp_gmail_access_token');
delete_option('pro_mail_smtp_gmail_refresh_token');
delete_site_option('pro_mail_smtp_gmail_refresh_token');
delete_option('pro_mail_smtp_from_email');
delete_site_option('pro_mail_smtp_from_email');
delete_option('pro_mail_smtp_from_name');
delete_site_option('pro_mail_smtp_from_name');
delete_option('pro_mail_smtp_enable_summary');
delete_site_option('pro_mail_smtp_enable_summary');
delete_option('pro_mail_smtp_summary_email');
delete_site_option('pro_mail_smtp_summary_email');
delete_option('pro_mail_smtp_summary_frequency');
delete_site_option('pro_mail_smtp_summary_frequency');
delete_option('pro_mail_smtp_fallback_to_wp_mail');
delete_site_option('pro_mail_smtp_fallback_to_wp_mail');
delete_option('wp_mail_smtp');
delete_site_option('wp_mail_smtp');
delete_option('swpsmtp_options');
delete_site_option('swpsmtp_options');
delete_option('wp_mail_smtp_mail_key');
delete_site_option('wp_mail_smtp_mail_key');
delete_option('pro_mail_smtp_db_version');
delete_site_option('pro_mail_smtp_db_version');
delete_option('pro_mail_smtp_import_easysmtp_notice_dismissed');
delete_site_option('pro_mail_smtp_import_easysmtp_notice_dismissed');
delete_option('pro_mail_smtp_import_wpmail_notice_dismissed');
delete_site_option('pro_mail_smtp_import_wpmail_notice_dismissed');
delete_option('pro_mail_smtp_alerts_enabled');
delete_site_option('pro_mail_smtp_alerts_enabled');
delete_option('pro_mail_smtp_alerts_max_per_day');
delete_site_option('pro_mail_smtp_alerts_max_per_day');
delete_option('pro_mail_smtp_alerts_webhook_timeout');
delete_site_option('pro_mail_smtp_alerts_webhook_timeout');
delete_option('pro_mail_smtp_gmail_access_token_data');
delete_site_option('pro_mail_smtp_gmail_access_token_data');
delete_option('pro_mail_smtp_outlook_access_token');
delete_site_option('pro_mail_smtp_outlook_access_token');
delete_option('pro_mail_smtp_outlook_refresh_token');
delete_site_option('pro_mail_smtp_outlook_refresh_token');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pro_mail_smtp_analytics_filters' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pro_mail_smtp_analytics_filters' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pro_mail_smtp_analytics_filters' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pro_mail_smtp_analytics_filters' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pro_mail_smtp_log_filters' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pro_mail_smtp_log_filters' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pro_mail_smtp_log_filters' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pro_mail_smtp_log_filters' ) );

