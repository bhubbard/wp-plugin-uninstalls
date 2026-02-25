<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qcnc_alert_digest_queue');
delete_site_option('qcnc_alert_digest_queue');
delete_option('qcnc_delete_data_on_uninstall');
delete_site_option('qcnc_delete_data_on_uninstall');
delete_option('qcnc_ai_provider');
delete_site_option('qcnc_ai_provider');
delete_option('qcnc_ai_api_key');
delete_site_option('qcnc_ai_api_key');
delete_option('qcnc_ai_model');
delete_site_option('qcnc_ai_model');
delete_option('qcnc_ai_rate_limit');
delete_site_option('qcnc_ai_rate_limit');
delete_option('qcnc_alert_email');
delete_site_option('qcnc_alert_email');
delete_option('qcnc_additional_alert_emails');
delete_site_option('qcnc_additional_alert_emails');
delete_option('qcnc_margin_threshold');
delete_site_option('qcnc_margin_threshold');
delete_option('qcnc_cost_increase_threshold');
delete_site_option('qcnc_cost_increase_threshold');
delete_option('qcnc_margin_drop_threshold');
delete_site_option('qcnc_margin_drop_threshold');
delete_option('qcnc_enabled_alerts');
delete_site_option('qcnc_enabled_alerts');
delete_option('qcnc_alert_digest_mode');
delete_site_option('qcnc_alert_digest_mode');
delete_option('qcnc_max_alerts_per_hour');
delete_site_option('qcnc_max_alerts_per_hour');
delete_option('qcnc_settings_last_modified');
delete_site_option('qcnc_settings_last_modified');
delete_option('qcnc_clv_tier_thresholds');
delete_site_option('qcnc_clv_tier_thresholds');
delete_option('qcnc_daily_summary_time');
delete_site_option('qcnc_daily_summary_time');
delete_option('qcnc_activated');
delete_site_option('qcnc_activated');
delete_option('qcnc_version');
delete_site_option('qcnc_version');
delete_option('qcnc_activation_time');
delete_site_option('qcnc_activation_time');
delete_option('qcnc_cron_last_scheduled');
delete_site_option('qcnc_cron_last_scheduled');
delete_option('qcnc_alert_retention_days');
delete_site_option('qcnc_alert_retention_days');
delete_option('qcnc_log_retention_days');
delete_site_option('qcnc_log_retention_days');
delete_option('qcnc_last_daily_clv_run');
delete_site_option('qcnc_last_daily_clv_run');
delete_option('qcnc_last_churn_check');
delete_site_option('qcnc_last_churn_check');
delete_option('qcnc_last_monthly_summary');
delete_site_option('qcnc_last_monthly_summary');
delete_option('qcnc_hourly_risk_check_enabled');
delete_site_option('qcnc_hourly_risk_check_enabled');
delete_option('qcnc_db_version');
delete_site_option('qcnc_db_version');
delete_option('qcnc_custom_costs_migrated');
delete_site_option('qcnc_custom_costs_migrated');
delete_option('qcnc_cache_duration');
delete_site_option('qcnc_cache_duration');
delete_option('qcnc_enable_debug_logging');
delete_site_option('qcnc_enable_debug_logging');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('qcnc_hourly_digest');
wp_clear_scheduled_hook('qcnc_daily_digest');
wp_clear_scheduled_hook('qcnc_daily_profit_summary');
wp_clear_scheduled_hook('qcnc_anomaly_detection');
wp_clear_scheduled_hook('qcnc_hourly_profit_check');
wp_clear_scheduled_hook('qcnc_weekly_cleanup');
wp_clear_scheduled_hook('qcnc_cache_cleanup');
wp_clear_scheduled_hook('qcnc_daily_clv_recalculation');
wp_clear_scheduled_hook('qcnc_weekly_churn_check');
wp_clear_scheduled_hook('qcnc_monthly_clv_summary');
wp_clear_scheduled_hook('qcnc_hourly_high_risk_check');
wp_clear_scheduled_hook('qcnc_calculate_new_customer_clv');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_qcnc_product_cost' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_qcnc_product_cost' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_qcnc_product_cost' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_qcnc_product_cost' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_qcnc_total_cost' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_qcnc_total_cost' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_qcnc_total_cost' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_qcnc_total_cost' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_qcnc_current_cost' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_qcnc_current_cost' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_qcnc_current_cost' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_qcnc_current_cost' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_qcnc_profit_analyzed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_qcnc_profit_analyzed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_qcnc_profit_analyzed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_qcnc_profit_analyzed' ) );

