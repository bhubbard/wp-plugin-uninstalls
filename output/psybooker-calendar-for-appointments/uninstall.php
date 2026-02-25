<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wppa_timezone');
delete_site_option('wppa_timezone');
delete_option('wppa_slot_interval_minutes');
delete_site_option('wppa_slot_interval_minutes');
delete_option('wppa_google_client_id');
delete_site_option('wppa_google_client_id');
delete_option('wppa_google_client_secret');
delete_site_option('wppa_google_client_secret');
delete_option('wppa_google_calendar_id');
delete_site_option('wppa_google_calendar_id');
delete_option('wppa_psychologist_name');
delete_site_option('wppa_psychologist_name');
delete_option('wppa_reminders_enabled');
delete_site_option('wppa_reminders_enabled');
delete_option('wppa_reminder_minutes');
delete_site_option('wppa_reminder_minutes');
delete_option('wppa_reminder_method');
delete_site_option('wppa_reminder_method');
delete_option('wppa_email_notifications_enabled');
delete_site_option('wppa_email_notifications_enabled');
delete_option('wppa_admin_email');
delete_site_option('wppa_admin_email');
delete_option('wppa_rate_limit_view_slots');
delete_site_option('wppa_rate_limit_view_slots');
delete_option('wppa_rate_limit_book');
delete_site_option('wppa_rate_limit_book');
delete_option('wppa_db_version');
delete_site_option('wppa_db_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wppa_overrides_snapshot_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wppa_lead_time_hours');
delete_site_option('wppa_lead_time_hours');
delete_option('wppa_close_adjacent_slots_after');
delete_site_option('wppa_close_adjacent_slots_after');
delete_option('wppa_close_adjacent_slots_before');
delete_site_option('wppa_close_adjacent_slots_before');
delete_option('wppa_close_adjacent_google_events');
delete_site_option('wppa_close_adjacent_google_events');
delete_option('wppa_timezone_auto');
delete_site_option('wppa_timezone_auto');
delete_option('wppa_google_enabled');
delete_site_option('wppa_google_enabled');
delete_option('wppa_google_two_way_sync');
delete_site_option('wppa_google_two_way_sync');
delete_option('wppa_last_sync_time');
delete_site_option('wppa_last_sync_time');
delete_option('wppa_encryption_key');
delete_site_option('wppa_encryption_key');
delete_option('wppa_google_sync_token');
delete_site_option('wppa_google_sync_token');
delete_option('wppa_google_token_expires');
delete_site_option('wppa_google_token_expires');
delete_option('wppa_google_refresh_token');
delete_site_option('wppa_google_refresh_token');
delete_option('wppa_google_access_token');
delete_site_option('wppa_google_access_token');

// Clear Cron Jobs
wp_clear_scheduled_hook('wppa_sync_google_calendar');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wppa_admin_tf' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wppa_admin_tf' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wppa_admin_tf' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wppa_admin_tf' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wppa_google_oauth_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wppa_google_oauth_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wppa_google_oauth_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wppa_google_oauth_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wppa_dismissed_encryption_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wppa_dismissed_encryption_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wppa_dismissed_encryption_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wppa_dismissed_encryption_notice' ) );

