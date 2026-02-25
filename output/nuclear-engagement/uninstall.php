<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nuclear_engagement_settings');
delete_site_option('nuclear_engagement_settings');
delete_option('nuclear_engagement_setup');
delete_site_option('nuclear_engagement_setup');
delete_option('nuclen_custom_css_version');
delete_site_option('nuclen_custom_css_version');
delete_option('nuclen_bootstrap_error');
delete_site_option('nuclen_bootstrap_error');
delete_option('nuclen_theme_settings');
delete_site_option('nuclen_theme_settings');
delete_option('nuclen_meta_migration_done');
delete_site_option('nuclen_meta_migration_done');
delete_option('nuclen_meta_migration_error');
delete_site_option('nuclen_meta_migration_error');
delete_option('nuclen_enabled_modules');
delete_site_option('nuclen_enabled_modules');
delete_option('nuclen_toc_auto_insert');
delete_site_option('nuclen_toc_auto_insert');
delete_option('nuclen_toc_sticky_enabled');
delete_site_option('nuclen_toc_sticky_enabled');
delete_option('nuclen_toc_min_headings');
delete_site_option('nuclen_toc_min_headings');
delete_option('nuclear_engagement_encryption_key');
delete_site_option('nuclear_engagement_encryption_key');
delete_option('nuclen_timeout_log');
delete_site_option('nuclen_timeout_log');
delete_option('nuclen_theme_migration_completed');
delete_site_option('nuclen_theme_migration_completed');
delete_option('nuclear_engagement_settings_backup');
delete_site_option('nuclear_engagement_settings_backup');
delete_option('nuclen_settings');
delete_site_option('nuclen_settings');
delete_option('nuclen_settings_backup');
delete_site_option('nuclen_settings_backup');
delete_option('nuclear_engagement_naming_migration_completed');
delete_site_option('nuclear_engagement_naming_migration_completed');

// Delete Transients
delete_transient('nuclen_recent_completions');
delete_site_transient('nuclen_recent_completions');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_nuclen_bulk_job_%', '_site_transient_nuclen_bulk_job_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_nuclen_batch_%', '_site_transient_nuclen_batch_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('nuclear_engagement_allowed_post_types');
delete_site_transient('nuclear_engagement_allowed_post_types');
delete_transient('nuclen_cleanup_results');
delete_site_transient('nuclen_cleanup_results');
delete_transient('nuclen_plugin_activation_redirect');
delete_site_transient('nuclen_plugin_activation_redirect');
delete_transient('nuclen_optin_table_exists');
delete_site_transient('nuclen_optin_table_exists');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_nuclen_batch_results_%', '_site_transient_nuclen_batch_results_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%bulk_jobs', '_site_transient_%bulk_jobs' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%s', '_site_transient_%s' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_nuclen_timeout_%', '_site_transient_nuclen_timeout_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('nuclen_active_theme');
delete_site_transient('nuclen_active_theme');
delete_transient('nuclen_theme_list');
delete_site_transient('nuclen_theme_list');

// Clear Cron Jobs
wp_clear_scheduled_hook('nuclen_process_batch');
wp_clear_scheduled_hook('nuclen_poll_generation');
wp_clear_scheduled_hook('nuclen_process_background_jobs');
wp_clear_scheduled_hook('nuclen_cleanup_completed_jobs');
wp_clear_scheduled_hook('nuclen_cache_cleanup');
wp_clear_scheduled_hook('nuclen_scheduled_invalidation');
wp_clear_scheduled_hook('nuclen_warm_cache');
wp_clear_scheduled_hook('nuclen_cleanup_old_batches');
wp_clear_scheduled_hook('nuclen_cleanup_orphaned_batches');
wp_clear_scheduled_hook('nuclen_cleanup_content_locks');
wp_clear_scheduled_hook('nuclen_theme_migration');
wp_clear_scheduled_hook('nuclen_frequent_timeout_check');
wp_clear_scheduled_hook('nuclen_cleanup_logs');
wp_clear_scheduled_hook('nuclen_check_task_timeouts');
wp_clear_scheduled_hook('nuclear_engagement_daily_generation');
wp_clear_scheduled_hook('nuclen_check_generation_status');
wp_clear_scheduled_hook('nuclen_cleanup_batch_transients');
wp_clear_scheduled_hook('nuclen_service_health_check');
wp_clear_scheduled_hook('nuclen_poll_batch');
wp_clear_scheduled_hook('nuclen_check_stuck_tasks');
wp_clear_scheduled_hook('nuclen_recheck_batch_counts');
wp_clear_scheduled_hook('nuclen_check_task_completion');
wp_clear_scheduled_hook('nuclen_check_batch_queue');
wp_clear_scheduled_hook('nuclen_circuit_breaker_cleanup');
wp_clear_scheduled_hook('nuclen_cleanup_pending_save');
wp_clear_scheduled_hook('nuclen_recover_generation');
wp_clear_scheduled_hook('nuclen_cleanup_stale_transients');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'nuclen_pointer_dismissed_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'nuclen_pointer_dismissed_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'nuclen_pointer_dismissed_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'nuclen_pointer_dismissed_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'nuclen_quiz_protected' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'nuclen_quiz_protected' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'nuclen_quiz_protected' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'nuclen_quiz_protected' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'nuclen-quiz-data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'nuclen-quiz-data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'nuclen-quiz-data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'nuclen-quiz-data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'nuclen-summary-data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'nuclen-summary-data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'nuclen-summary-data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'nuclen-summary-data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'nuclen_toc_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'nuclen_toc_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'nuclen_toc_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'nuclen_toc_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );

