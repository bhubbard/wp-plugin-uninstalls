<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('colaias_wpforo_ai_flag_types');
delete_site_option('colaias_wpforo_ai_flag_types');
delete_option('colaias_wpforo_ai_can_log_info');
delete_site_option('colaias_wpforo_ai_can_log_info');
delete_option('colaias_wpforo_ai_openrouter_api_key');
delete_site_option('colaias_wpforo_ai_openrouter_api_key');
delete_option('colaias_wpforo_ai_openrouter_model');
delete_site_option('colaias_wpforo_ai_openrouter_model');
delete_option('colaias_wpforo_ai_send_metrics_to_openrouter');
delete_site_option('colaias_wpforo_ai_send_metrics_to_openrouter');
delete_option('colaias_wpforo_ai_custom_xtitle_for_openrouter');
delete_site_option('colaias_wpforo_ai_custom_xtitle_for_openrouter');
delete_option('colaias_wpforo_ai_moderation_prompt');
delete_site_option('colaias_wpforo_ai_moderation_prompt');
delete_option('colaias_wpforo_ai_mute_duration');
delete_site_option('colaias_wpforo_ai_mute_duration');
delete_option('colaias_wpforo_ai_openrouter_timeout');
delete_site_option('colaias_wpforo_ai_openrouter_timeout');
delete_option('colaias_wpforo_ai_use_context');
delete_site_option('colaias_wpforo_ai_use_context');
delete_option('colaias_wpforo_ai_max_succeeding');
delete_site_option('colaias_wpforo_ai_max_succeeding');
delete_option('colaias_wpforo_ai_max_preceding');
delete_site_option('colaias_wpforo_ai_max_preceding');
delete_option('colaias_wpforo_ai_cached_site_url');
delete_site_option('colaias_wpforo_ai_cached_site_url');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_colaias_action_notice_%', '_site_transient_colaias_action_notice_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_colaias_wpforo_ai_user_notices_%', '_site_transient_colaias_wpforo_ai_user_notices_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('colaias_wpforo_ai_job_cleanup');
wp_clear_scheduled_hook('colaias_wpforo_ai_job_flag_metrics_cleanup');
wp_clear_scheduled_hook('colaias_wpforo_ai_async_post_verification');
wp_clear_scheduled_hook('colaias_wpforo_ai_async_status_verification');

