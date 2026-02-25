<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('promptor_wizard_completed');
delete_site_option('promptor_wizard_completed');
delete_option('promptor_wizard_dismissed');
delete_site_option('promptor_wizard_dismissed');
delete_option('promptor_db_version');
delete_site_option('promptor_db_version');
delete_option('promptor_first_lead_captured');
delete_site_option('promptor_first_lead_captured');
delete_option('promptor_api_settings');
delete_site_option('promptor_api_settings');
delete_option('promptor_query_count');
delete_site_option('promptor_query_count');
delete_option('promptor_contexts');
delete_site_option('promptor_contexts');
delete_option('promptor_embed_step_completed');
delete_site_option('promptor_embed_step_completed');
delete_option('promptor_ui_settings');
delete_site_option('promptor_ui_settings');
delete_option('promptor_telemetry_notice_dismissed');
delete_site_option('promptor_telemetry_notice_dismissed');
delete_option('promptor_telemetry_coupon_notice_dismissed');
delete_site_option('promptor_telemetry_coupon_notice_dismissed');
delete_option('promptor_telemetry_enabled');
delete_site_option('promptor_telemetry_enabled');
delete_option('promptor_telemetry_id');
delete_site_option('promptor_telemetry_id');
delete_option('promptor_telemetry_queue');
delete_site_option('promptor_telemetry_queue');
delete_option('promptor_telemetry_step_1_completed');
delete_site_option('promptor_telemetry_step_1_completed');
delete_option('promptor_telemetry_step_2_completed');
delete_site_option('promptor_telemetry_step_2_completed');
delete_option('promptor_telemetry_step_3_completed');
delete_site_option('promptor_telemetry_step_3_completed');
delete_option('promptor_telemetry_kb_count');
delete_site_option('promptor_telemetry_kb_count');
delete_option('promptor_telemetry_kb_items_total');
delete_site_option('promptor_telemetry_kb_items_total');
delete_option('promptor_telemetry_first_query_sent');
delete_site_option('promptor_telemetry_first_query_sent');
delete_option('promptor_telemetry_queries_total');
delete_site_option('promptor_telemetry_queries_total');
delete_option('promptor_telemetry_first_lead_captured');
delete_site_option('promptor_telemetry_first_lead_captured');
delete_option('promptor_telemetry_leads_total');
delete_site_option('promptor_telemetry_leads_total');
delete_option('promptor_telemetry_last_send');
delete_site_option('promptor_telemetry_last_send');
delete_option('promptor_telemetry_enabled_at');
delete_site_option('promptor_telemetry_enabled_at');
delete_option('promptor_crawler_settings');
delete_site_option('promptor_crawler_settings');
delete_option('promptor_notification_settings');
delete_site_option('promptor_notification_settings');
delete_option('promptor_webhook_settings');
delete_site_option('promptor_webhook_settings');
delete_option('promptor_limit_reset_date');
delete_site_option('promptor_limit_reset_date');
delete_option('promptor_activation_time');
delete_site_option('promptor_activation_time');

// Delete Transients
delete_transient('promptor_activation_redirect');
delete_site_transient('promptor_activation_redirect');
delete_transient('promptor_full_changelog');
delete_site_transient('promptor_full_changelog');
delete_transient('promptor_latest_changelog');
delete_site_transient('promptor_latest_changelog');
delete_transient('promptor_api_connection_success');
delete_site_transient('promptor_api_connection_success');
delete_transient('settings_errors');
delete_site_transient('settings_errors');
delete_transient('promptor_license_status_check');
delete_site_transient('promptor_license_status_check');

// Clear Cron Jobs
wp_clear_scheduled_hook('promptor_daily_license_check');
wp_clear_scheduled_hook('promptor_telemetry_send');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'promptor_onboarding_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'promptor_onboarding_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'promptor_onboarding_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'promptor_onboarding_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'promptor_admin_visits' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'promptor_admin_visits' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'promptor_admin_visits' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'promptor_admin_visits' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'promptor_first_admin_visit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'promptor_first_admin_visit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'promptor_first_admin_visit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'promptor_first_admin_visit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'promptor_review_prompt_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'promptor_review_prompt_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'promptor_review_prompt_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'promptor_review_prompt_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'promptor_review_shown_for_lead' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'promptor_review_shown_for_lead' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'promptor_review_shown_for_lead' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'promptor_review_shown_for_lead' ) );

