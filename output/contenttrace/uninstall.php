<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('contenttrace_archive_auto');
delete_site_option('contenttrace_archive_auto');
delete_option('contenttrace_token_visibility');
delete_site_option('contenttrace_token_visibility');
delete_option('contenttrace_token_style');
delete_site_option('contenttrace_token_style');
delete_option('contenttrace_enabled');
delete_site_option('contenttrace_enabled');
delete_option('contenttrace_last_log_cleanup');
delete_site_option('contenttrace_last_log_cleanup');
delete_option('contenttrace_scan_log');
delete_site_option('contenttrace_scan_log');
delete_option('contenttrace_job_logs');
delete_site_option('contenttrace_job_logs');
delete_option('contenttrace_last_nightly_scan');
delete_site_option('contenttrace_last_nightly_scan');
delete_option('contenttrace_scan_position');
delete_site_option('contenttrace_scan_position');
delete_option('contenttrace_exclude_categories');
delete_site_option('contenttrace_exclude_categories');
delete_option('contenttrace_last_full_scan');
delete_site_option('contenttrace_last_full_scan');
delete_option('contenttrace_email_alerts');
delete_site_option('contenttrace_email_alerts');
delete_option('contenttrace_current_job');
delete_site_option('contenttrace_current_job');
delete_option('contenttrace_alert_email');
delete_site_option('contenttrace_alert_email');
delete_option('contenttrace_owner_name');
delete_site_option('contenttrace_owner_name');
delete_option('contenttrace_owner_email');
delete_site_option('contenttrace_owner_email');
delete_option('contenttrace_owner_address');
delete_site_option('contenttrace_owner_address');
delete_option('contenttrace_owner_country');
delete_site_option('contenttrace_owner_country');
delete_option('contenttrace_add_to_excerpts');
delete_site_option('contenttrace_add_to_excerpts');
delete_option('contenttrace_rss_tokens');
delete_site_option('contenttrace_rss_tokens');

// Clear Cron Jobs
wp_clear_scheduled_hook('contenttrace_archive_submit');
wp_clear_scheduled_hook('contenttrace_daily_scan');
wp_clear_scheduled_hook('contenttrace_process_scan_batch');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_contenttrace_archive_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_contenttrace_archive_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_contenttrace_archive_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_contenttrace_archive_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_contenttrace_archive_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_contenttrace_archive_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_contenttrace_archive_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_contenttrace_archive_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_contenttrace_archive_pending' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_contenttrace_archive_pending' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_contenttrace_archive_pending' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_contenttrace_archive_pending' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_contenttrace_fingerprint' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_contenttrace_fingerprint' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_contenttrace_fingerprint' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_contenttrace_fingerprint' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_contenttrace_last_scan' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_contenttrace_last_scan' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_contenttrace_last_scan' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_contenttrace_last_scan' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_contenttrace_takedown_log' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_contenttrace_takedown_log' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_contenttrace_takedown_log' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_contenttrace_takedown_log' ) );

