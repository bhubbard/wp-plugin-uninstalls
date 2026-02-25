<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('a1ai_openai_api_key');
delete_site_option('a1ai_openai_api_key');
delete_option('a1ai_edd_api_key');
delete_site_option('a1ai_edd_api_key');
delete_option('a1ai_upgrade_license');
delete_site_option('a1ai_upgrade_license');
delete_option('a1ai_default_model');
delete_site_option('a1ai_default_model');
delete_option('a1ai_default_temperature');
delete_site_option('a1ai_default_temperature');
delete_option('a1ai_default_max_tokens');
delete_site_option('a1ai_default_max_tokens');
delete_option('a1ai_global_chatbot_enabled');
delete_site_option('a1ai_global_chatbot_enabled');
delete_option('a1ai_global_chatbot_id');
delete_site_option('a1ai_global_chatbot_id');
delete_option('a1ai_global_chatbot_position');
delete_site_option('a1ai_global_chatbot_position');
delete_option('a1ai_keep_conversation_history');
delete_site_option('a1ai_keep_conversation_history');
delete_option('a1ai_conversation_retention_days');
delete_site_option('a1ai_conversation_retention_days');
delete_option('a1ai_keep_data_on_uninstall');
delete_site_option('a1ai_keep_data_on_uninstall');
delete_option('a1ai_show_powered_by');
delete_site_option('a1ai_show_powered_by');
delete_option('a1ai_content_awareness_settings');
delete_site_option('a1ai_content_awareness_settings');
delete_option('a1ai_action_guidance_settings');
delete_site_option('a1ai_action_guidance_settings');
delete_option('a1ai_conversation_settings');
delete_site_option('a1ai_conversation_settings');
delete_option('a1ai_contact_requests');
delete_site_option('a1ai_contact_requests');
delete_option('a1ai_reviews');
delete_site_option('a1ai_reviews');
delete_option('a1ai_db_version');
delete_site_option('a1ai_db_version');
delete_option('a1ai_review_chatbot_id');
delete_site_option('a1ai_review_chatbot_id');
delete_option('a1ai_rating_system');
delete_site_option('a1ai_rating_system');
delete_option('a1ai_review_intro_text');
delete_site_option('a1ai_review_intro_text');
delete_option('a1ai_review_google_link');
delete_site_option('a1ai_review_google_link');
delete_option('a1ai_review_yelp_link');
delete_site_option('a1ai_review_yelp_link');
delete_option('a1ai_review_facebook_link');
delete_site_option('a1ai_review_facebook_link');
delete_option('a1ai_review_other_link');
delete_site_option('a1ai_review_other_link');
delete_option('a1ai_review_other_name');
delete_site_option('a1ai_review_other_name');
delete_option('a1ai_min_star_threshold');
delete_site_option('a1ai_min_star_threshold');
delete_option('a1ai_min_scale_threshold');
delete_site_option('a1ai_min_scale_threshold');
delete_option('a1ai_upgrade_license_status');
delete_site_option('a1ai_upgrade_license_status');
delete_option('a1ai_conversion_tracking');
delete_site_option('a1ai_conversion_tracking');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'a1ai_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('a1ai_adjustments_has_temperature');
delete_site_option('a1ai_adjustments_has_temperature');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_a1ai_assistant_context_%', '_site_transient_a1ai_assistant_context_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('a1ai_activation_redirect');
delete_site_transient('a1ai_activation_redirect');
delete_transient('a1ai_usage_stats_cache');
delete_site_transient('a1ai_usage_stats_cache');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_a1ai_review_submitted_%', '_site_transient_a1ai_review_submitted_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('a1ai_daily_maintenance');

