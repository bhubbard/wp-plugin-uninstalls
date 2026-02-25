<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spamblocker_ai_comments_enabled');
delete_site_option('spamblocker_ai_comments_enabled');
delete_option('spamblocker_ai_fallback_count');
delete_site_option('spamblocker_ai_fallback_count');
delete_option('spamblocker_ai_api_provider');
delete_site_option('spamblocker_ai_api_provider');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_api_key' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('spamblocker_ai_gemini_api_key');
delete_site_option('spamblocker_ai_gemini_api_key');
delete_option('spamblocker_ai_openai_api_key');
delete_site_option('spamblocker_ai_openai_api_key');
delete_option('spamblocker_ai_gemini_model');
delete_site_option('spamblocker_ai_gemini_model');
delete_option('spamblocker_ai_openai_model');
delete_site_option('spamblocker_ai_openai_model');
delete_option('spamblocker_ai_log_spam');
delete_site_option('spamblocker_ai_log_spam');
delete_option('spamblocker_ai_log_ip_user_agent');
delete_site_option('spamblocker_ai_log_ip_user_agent');
delete_option('spamblocker_ai_error_message');
delete_site_option('spamblocker_ai_error_message');
delete_option('spamblocker_ai_debug');
delete_site_option('spamblocker_ai_debug');
delete_option('spamblocker_ai_gemini_available_models');
delete_site_option('spamblocker_ai_gemini_available_models');
delete_option('spamblocker_ai_openai_available_models');
delete_site_option('spamblocker_ai_openai_available_models');
delete_option('spamblocker_ai_fallback_notice_dismissed');
delete_site_option('spamblocker_ai_fallback_notice_dismissed');
delete_option('spamblocker_ai_version');
delete_site_option('spamblocker_ai_version');
delete_option('spamblocker_ai_api_error_message');
delete_site_option('spamblocker_ai_api_error_message');
delete_option('spamblocker_ai_rate_limit_count');
delete_site_option('spamblocker_ai_rate_limit_count');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_spamblocker_ai_notice_%', '_site_transient_spamblocker_ai_notice_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('spamblocker_ai_gemini_models_full_data');
delete_site_transient('spamblocker_ai_gemini_models_full_data');
delete_transient('spamblocker_ai_gemini_models_cache');
delete_site_transient('spamblocker_ai_gemini_models_cache');
delete_transient('spamblocker_ai_openai_models_cache');
delete_site_transient('spamblocker_ai_openai_models_cache');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_spamblocker_ai_error_form_%', '_site_transient_spamblocker_ai_error_form_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('spamblocker_ai_cleanup_logs');

