<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_ai_workflows_installation_id');
delete_site_option('wp_ai_workflows_installation_id');
delete_option('wp_ai_workflows_analytics_opt_out');
delete_site_option('wp_ai_workflows_analytics_opt_out');
delete_option('wp_ai_workflows_last_activation');
delete_site_option('wp_ai_workflows_last_activation');
delete_option('wp_ai_workflows_installed_at');
delete_site_option('wp_ai_workflows_installed_at');
delete_option('wp_ai_workflows_settings');
delete_site_option('wp_ai_workflows_settings');
delete_option('wp_ai_workflows_costs');
delete_site_option('wp_ai_workflows_costs');
delete_option('wp_ai_workflows_multimedia_costs');
delete_site_option('wp_ai_workflows_multimedia_costs');
delete_option('wp_ai_workflows_cost_settings');
delete_site_option('wp_ai_workflows_cost_settings');
delete_option('wp_ai_workflows_last_cost_sync');
delete_site_option('wp_ai_workflows_last_cost_sync');
delete_option('wp_ai_workflows_db_version');
delete_site_option('wp_ai_workflows_db_version');
delete_option('wp_ai_workflows_chat_db_version');
delete_site_option('wp_ai_workflows_chat_db_version');
delete_option('wp_ai_workflows');
delete_site_option('wp_ai_workflows');
delete_option('wp_ai_workflows_outputs');
delete_site_option('wp_ai_workflows_outputs');
delete_option('wp_ai_workflows_encrypted_api_key');
delete_site_option('wp_ai_workflows_encrypted_api_key');
delete_option('wp_ai_workflows_api_key');
delete_site_option('wp_ai_workflows_api_key');
delete_option('wp_ai_workflows_google_integrated');
delete_site_option('wp_ai_workflows_google_integrated');
delete_option('wp_ai_workflows_google_token_info');
delete_site_option('wp_ai_workflows_google_token_info');
delete_option('wp_ai_workflows_google_access_token');
delete_site_option('wp_ai_workflows_google_access_token');
delete_option('wp_ai_workflows_google_refresh_token');
delete_site_option('wp_ai_workflows_google_refresh_token');
delete_option('wp_ai_workflows_active_sse_sessions');
delete_site_option('wp_ai_workflows_active_sse_sessions');
delete_option('wp_ai_workflows_task_roles');
delete_site_option('wp_ai_workflows_task_roles');
delete_option('wp_ai_workflows_setup_completed');
delete_site_option('wp_ai_workflows_setup_completed');
delete_option('wp_ai_workflows_google_redirect_uri');
delete_site_option('wp_ai_workflows_google_redirect_uri');
delete_option('wp_ai_workflows_migrated_to_table');
delete_site_option('wp_ai_workflows_migrated_to_table');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wp_ai_workflows_chat_config_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wp_ai_workflows_webhook_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wp_ai_workflows_human_tasks_db_version');
delete_site_option('wp_ai_workflows_human_tasks_db_version');
delete_option('wp_ai_workflows_lite_version');
delete_site_option('wp_ai_workflows_lite_version');
delete_option('wp_ai_workflows_version');
delete_site_option('wp_ai_workflows_version');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wp_ai_workflows_refresh_chat_%', '_site_transient_wp_ai_workflows_refresh_chat_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wp_ai_workflows_action_result_%', '_site_transient_wp_ai_workflows_action_result_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wp_ai_chat_session_%', '_site_transient_wp_ai_chat_session_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wp_ai_workflows_webhook_sample_%', '_site_transient_wp_ai_workflows_webhook_sample_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('wp_ai_workflows_needs_google_reauth');
delete_site_transient('wp_ai_workflows_needs_google_reauth');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wp_ai_workflows_pending_execution_%', '_site_transient_wp_ai_workflows_pending_execution_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('wp_ai_workflows_openrouter_models');
delete_site_transient('wp_ai_workflows_openrouter_models');
delete_transient('wp_ai_workflows_migration_postponed');
delete_site_transient('wp_ai_workflows_migration_postponed');
delete_transient('wp_ai_workflows_migration_lock');
delete_site_transient('wp_ai_workflows_migration_lock');
delete_transient('wp_ai_workflows_lite_notice_dismissed');
delete_site_transient('wp_ai_workflows_lite_notice_dismissed');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_ai_workflows_daily_analytics');
wp_clear_scheduled_hook('wp_ai_workflows_check_action_result');
wp_clear_scheduled_hook('wp_ai_workflows_cleanup_chat_data');
wp_clear_scheduled_hook('wp_ai_workflows_execute_delayed_output');
wp_clear_scheduled_hook('wp_ai_workflows_rss_check');
wp_clear_scheduled_hook('wp_ai_workflows_execute_scheduled_workflow');
wp_clear_scheduled_hook('wp_ai_workflows_execute_scheduled');
wp_clear_scheduled_hook('wp_ai_workflows_execute_webhook_workflow');
wp_clear_scheduled_hook('wp_ai_workflows_process_form_submission');
wp_clear_scheduled_hook('wp_ai_workflows_execute_workflow');
wp_clear_scheduled_hook('wp_ai_workflows_process_login_trigger');
wp_clear_scheduled_hook('wp_ai_workflows_daily_maintenance');
wp_clear_scheduled_hook('wp_ai_workflows_cleanup');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_image_gallery' ) );

