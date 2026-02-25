<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cnbm_version');
delete_site_option('cnbm_version');
delete_option('cnbm_activated_time');
delete_site_option('cnbm_activated_time');
delete_option('cnbm_db_version');
delete_site_option('cnbm_db_version');
delete_option('cnbm_settings');
delete_site_option('cnbm_settings');
delete_option('cnbm_weekly_report_settings');
delete_site_option('cnbm_weekly_report_settings');
delete_option('cnbm_last_newsletter_send');
delete_site_option('cnbm_last_newsletter_send');
delete_option('cnbm_template_type');
delete_site_option('cnbm_template_type');
delete_option('cnbm_subscriber_keys_migrated');
delete_site_option('cnbm_subscriber_keys_migrated');
delete_option('cnbm_last_newsletter_send_timestamp');
delete_site_option('cnbm_last_newsletter_send_timestamp');

// Delete Transients
delete_transient('cnbm_activation_error');
delete_site_transient('cnbm_activation_error');

// Clear Cron Jobs
wp_clear_scheduled_hook('cnbm_send_newsletter');
wp_clear_scheduled_hook('cnbm_process_email_queue');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cnbm_dismissed_rating_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cnbm_dismissed_rating_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cnbm_dismissed_rating_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cnbm_dismissed_rating_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cnbm_smtp_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cnbm_smtp_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cnbm_smtp_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cnbm_smtp_notice_dismissed' ) );

