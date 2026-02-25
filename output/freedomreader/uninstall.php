<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('freedomreader_subscription_plans');
delete_site_option('freedomreader_subscription_plans');
delete_option('freedomreader_paypal_mode');
delete_site_option('freedomreader_paypal_mode');
delete_option('freedomreader_support_notice_last_shown');
delete_site_option('freedomreader_support_notice_last_shown');
delete_option('freedomreader_support_notice_dismissed');
delete_site_option('freedomreader_support_notice_dismissed');
delete_option('freedomreader_auto_link_keywords');
delete_site_option('freedomreader_auto_link_keywords');
delete_option('freedomreader_paypal_client_id');
delete_site_option('freedomreader_paypal_client_id');
delete_option('freedomreader_paypal_client_secret');
delete_site_option('freedomreader_paypal_client_secret');
delete_option('freedomreader_currency');
delete_site_option('freedomreader_currency');
delete_option('freedomreader_teaser_message');
delete_site_option('freedomreader_teaser_message');
delete_option('freedomreader_unlock_button_text');
delete_site_option('freedomreader_unlock_button_text');
delete_option('freedomreader_subscription_button_text');
delete_site_option('freedomreader_subscription_button_text');
delete_option('freedomreader_trial_days');
delete_site_option('freedomreader_trial_days');
delete_option('freedomreader_show_progress_bar');
delete_site_option('freedomreader_show_progress_bar');
delete_option('freedomreader_show_reading_time');
delete_site_option('freedomreader_show_reading_time');
delete_option('freedomreader_reading_time_mode');
delete_site_option('freedomreader_reading_time_mode');
delete_option('freedomreader_reading_speed');
delete_site_option('freedomreader_reading_speed');
delete_option('freedomreader_show_ask_author');
delete_site_option('freedomreader_show_ask_author');
delete_option('freedomreader_auto_internal_links');
delete_site_option('freedomreader_auto_internal_links');
delete_option('freedomreader_keep_data_on_uninstall');
delete_site_option('freedomreader_keep_data_on_uninstall');
delete_option('freedomreader_auto_cleanup');
delete_site_option('freedomreader_auto_cleanup');
delete_option('freedomreader_export_format');
delete_site_option('freedomreader_export_format');
delete_option('freedomreader_auto_backup');
delete_site_option('freedomreader_auto_backup');
delete_option('freedomreader_backup_frequency');
delete_site_option('freedomreader_backup_frequency');
delete_option('freedomreader_backup_retention');
delete_site_option('freedomreader_backup_retention');
delete_option('freedomreader_performance_monitoring');
delete_site_option('freedomreader_performance_monitoring');
delete_option('freedomreader_user_activity_logs');
delete_site_option('freedomreader_user_activity_logs');
delete_option('freedomreader_email_new_purchases');
delete_site_option('freedomreader_email_new_purchases');
delete_option('freedomreader_email_new_subscriptions');
delete_site_option('freedomreader_email_new_subscriptions');
delete_option('freedomreader_email_failed_payments');
delete_site_option('freedomreader_email_failed_payments');
delete_option('freedomreader_email_performance_alerts');
delete_site_option('freedomreader_email_performance_alerts');
delete_option('freedomreader_db_version');
delete_site_option('freedomreader_db_version');
delete_option('freedomreader_daily_performance_report');
delete_site_option('freedomreader_daily_performance_report');
delete_option('freedomreader_default_price');
delete_site_option('freedomreader_default_price');

// Delete Transients
delete_transient('freedomreader_performance_session');
delete_site_transient('freedomreader_performance_session');

// Clear Cron Jobs
wp_clear_scheduled_hook('freedomreader_auto_backup');
wp_clear_scheduled_hook('freedomreader_performance_report');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_freedomreader_reading_time_manual' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_freedomreader_reading_time_manual' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_freedomreader_reading_time_manual' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_freedomreader_reading_time_manual' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_freedomreader_reading_time_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_freedomreader_reading_time_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_freedomreader_reading_time_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_freedomreader_reading_time_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_freedomreader_reading_time_auto' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_freedomreader_reading_time_auto' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_freedomreader_reading_time_auto' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_freedomreader_reading_time_auto' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_freedomreader_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_freedomreader_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_freedomreader_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_freedomreader_price' ) );

