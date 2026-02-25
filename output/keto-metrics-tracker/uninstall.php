<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('keto_metrics_tracker_measurement_units');
delete_site_option('keto_metrics_tracker_measurement_units');
delete_option('keto_metrics_tracker_reminder_enabled');
delete_site_option('keto_metrics_tracker_reminder_enabled');
delete_option('keto_metrics_tracker_reminder_time');
delete_site_option('keto_metrics_tracker_reminder_time');
delete_option('keto_metrics_tracker_tracking_page');
delete_site_option('keto_metrics_tracker_tracking_page');
delete_option('keto_metrics_tracker_email_from_name');
delete_site_option('keto_metrics_tracker_email_from_name');
delete_option('keto_metrics_tracker_email_from_address');
delete_site_option('keto_metrics_tracker_email_from_address');
delete_option('keto_metrics_tracker_enable_registration');
delete_site_option('keto_metrics_tracker_enable_registration');
delete_option('keto_metrics_tracker_reminders_enabled');
delete_site_option('keto_metrics_tracker_reminders_enabled');
delete_option('keto_metrics_tracker_db_version');
delete_site_option('keto_metrics_tracker_db_version');
delete_option('hmt_tracking_page');
delete_site_option('hmt_tracking_page');
delete_option('hmt_enable_registration');
delete_site_option('hmt_enable_registration');
delete_option('keto_metrics_tracker_daily_last_sent');
delete_site_option('keto_metrics_tracker_daily_last_sent');
delete_option('keto_metrics_tracker_monthly_last_sent');
delete_site_option('keto_metrics_tracker_monthly_last_sent');
delete_option('keto_metrics_tracker_weekly_last_sent');
delete_site_option('keto_metrics_tracker_weekly_last_sent');
delete_option('hmt_monthly_last_sent');
delete_site_option('hmt_monthly_last_sent');
delete_option('hmt_measurement_units');
delete_site_option('hmt_measurement_units');
delete_option('hmt_reminder_enabled');
delete_site_option('hmt_reminder_enabled');
delete_option('hmt_reminder_time');
delete_site_option('hmt_reminder_time');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_keto_metrics_tracker_redirect_%', '_site_transient_keto_metrics_tracker_redirect_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('keto_metrics_tracker_reminder_check');
wp_clear_scheduled_hook('keto_metrics_tracker_daily_reminder');
wp_clear_scheduled_hook('keto_metrics_tracker_monthly_reminder');
wp_clear_scheduled_hook('hmt_daily_reminder');
wp_clear_scheduled_hook('hmt_monthly_reminder');
wp_clear_scheduled_hook('hmt_reminder_check');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'keto_metrics_tracker_reminders_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'keto_metrics_tracker_reminders_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'keto_metrics_tracker_reminders_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'keto_metrics_tracker_reminders_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'hmt_reminders_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'hmt_reminders_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'hmt_reminders_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'hmt_reminders_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'keto_metrics_tracker_chart_period_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'keto_metrics_tracker_chart_period_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'keto_metrics_tracker_chart_period_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'keto_metrics_tracker_chart_period_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'keto_metrics_tracker_chart_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'keto_metrics_tracker_chart_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'keto_metrics_tracker_chart_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'keto_metrics_tracker_chart_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'keto_metrics_tracker_height' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'keto_metrics_tracker_height' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'keto_metrics_tracker_height' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'keto_metrics_tracker_height' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'keto_metrics_tracker_age' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'keto_metrics_tracker_age' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'keto_metrics_tracker_age' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'keto_metrics_tracker_age' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'keto_metrics_tracker_weight_goal' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'keto_metrics_tracker_weight_goal' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'keto_metrics_tracker_weight_goal' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'keto_metrics_tracker_weight_goal' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'hmt_weight_goal' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'hmt_weight_goal' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'hmt_weight_goal' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'hmt_weight_goal' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'keto_metrics_tracker_weight_goal_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'keto_metrics_tracker_weight_goal_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'keto_metrics_tracker_weight_goal_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'keto_metrics_tracker_weight_goal_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'hmt_weight_goal_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'hmt_weight_goal_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'hmt_weight_goal_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'hmt_weight_goal_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'hmt_chart_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'hmt_chart_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'hmt_chart_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'hmt_chart_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'hmt_chart_period_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'hmt_chart_period_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'hmt_chart_period_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'hmt_chart_period_%' ) );

