<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('abj404_settings');
delete_site_option('abj404_settings');
delete_option('abj404_simulated_db_latency_ms');
delete_site_option('abj404_simulated_db_latency_ms');
delete_option('abj404_migrated_to_relative_paths');
delete_site_option('abj404_migrated_to_relative_paths');
delete_option('abj404_activation_processed_blogs');
delete_site_option('abj404_activation_processed_blogs');
delete_option('abj404_activation_in_progress');
delete_site_option('abj404_activation_in_progress');
delete_option('abj404_migration_results');
delete_site_option('abj404_migration_results');
delete_option('abj404_ngram_cache_initialized');
delete_site_option('abj404_ngram_cache_initialized');
delete_option('abj404_ngram_usage_stats');
delete_site_option('abj404_ngram_usage_stats');
delete_option('abj404_setup_completed');
delete_site_option('abj404_setup_completed');
delete_option('abj404_pending_network_activation');
delete_site_option('abj404_pending_network_activation');
delete_option('abj404_network_activation_total');
delete_site_option('abj404_network_activation_total');
delete_option('wp_dark_mode_enabled');
delete_site_option('wp_dark_mode_enabled');
delete_option('dark_mode_for_wp_dashboard_enabled');
delete_site_option('dark_mode_for_wp_dashboard_enabled');
delete_option('abj404_installed_time');
delete_site_option('abj404_installed_time');
delete_option('abj404_user_feedback');
delete_site_option('abj404_user_feedback');

// Delete Transients
delete_transient('abj404_runtime_missing_files');
delete_site_transient('abj404_runtime_missing_files');
delete_transient('abj404_plugin_db_notice');
delete_site_transient('abj404_plugin_db_notice');
delete_transient('abj404_runtime_integrity_checked');
delete_site_transient('abj404_runtime_integrity_checked');
delete_transient('abj404_view_cache_cleanup_marker');
delete_site_transient('abj404_view_cache_cleanup_marker');
delete_transient('abj404_logs_requested_url_column_meta');
delete_site_transient('abj404_logs_requested_url_column_meta');
delete_transient('abj404_logs_requested_url_charset');
delete_site_transient('abj404_logs_requested_url_charset');

// Clear Cron Jobs
wp_clear_scheduled_hook('abj404_network_activation_background');
wp_clear_scheduled_hook('abj404_rebuild_ngram_cache_hook');
wp_clear_scheduled_hook('abj404_duplicateCronAction');
wp_clear_scheduled_hook('abj404_network_activation_hook');
wp_clear_scheduled_hook('abj404_cleanupCronAction');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'abj404_settings_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'abj404_settings_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'abj404_settings_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'abj404_settings_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_abj404_create_redirect' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_abj404_create_redirect' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_abj404_create_redirect' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_abj404_create_redirect' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'admin_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'admin_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'admin_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'admin_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'abj404_review_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'abj404_review_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'abj404_review_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'abj404_review_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'abj404_review_remind_later' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'abj404_review_remind_later' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'abj404_review_remind_later' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'abj404_review_remind_later' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'abj404_review_step' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'abj404_review_step' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'abj404_review_step' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'abj404_review_step' ) );

