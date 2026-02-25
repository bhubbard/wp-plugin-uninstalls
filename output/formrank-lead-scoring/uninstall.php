<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('formrank_enrichment_notice_pending');
delete_site_option('formrank_enrichment_notice_pending');
delete_option('formrank_enrichment_notice_dismissed');
delete_site_option('formrank_enrichment_notice_dismissed');
delete_option('formrank_license_activated');
delete_site_option('formrank_license_activated');
delete_option('formrank_import_log');
delete_site_option('formrank_import_log');
delete_option('formrank_settings');
delete_site_option('formrank_settings');
delete_option('formrank_onboarding_status');
delete_site_option('formrank_onboarding_status');
delete_option('formrank_ls_db_version');
delete_site_option('formrank_ls_db_version');
delete_option('formrank_usage_stats');
delete_site_option('formrank_usage_stats');
delete_option('formrank_ai_usage');
delete_site_option('formrank_ai_usage');
delete_option('formrank_previous_plan_status');
delete_site_option('formrank_previous_plan_status');
delete_option('formrank_license_key');
delete_site_option('formrank_license_key');
delete_option('formrank_feedback_log');
delete_site_option('formrank_feedback_log');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');

// Delete Transients
delete_transient('formrank_usage_stats');
delete_site_transient('formrank_usage_stats');
delete_transient('formrank_enrich_stats');
delete_site_transient('formrank_enrich_stats');
delete_transient('formrank_ls_activated');
delete_site_transient('formrank_ls_activated');
delete_transient('formrank_ls_setup_redirect');
delete_site_transient('formrank_ls_setup_redirect');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_formrank_enrich_cooldown_%', '_site_transient_formrank_enrich_cooldown_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('formrank_cleanup_old_cache');
wp_clear_scheduled_hook('formrank_data_retention_cleanup');
wp_clear_scheduled_hook('formrank_webhook_retry');
wp_clear_scheduled_hook('formrank_score_lead');
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_field_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_field_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_field_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_field_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_meta_referer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_meta_referer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_meta_referer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_meta_referer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_meta_remote_ip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_meta_remote_ip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_meta_remote_ip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_meta_remote_ip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_meta_user_agent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_meta_user_agent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_meta_user_agent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_meta_user_agent' ) );

