<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ai_search_custom_fields_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ai_search_woocommerce_fields');
delete_site_option('ai_search_woocommerce_fields');
delete_option('ai_search_provider');
delete_site_option('ai_search_provider');
delete_option('ai_search_service_token');
delete_site_option('ai_search_service_token');
delete_option('ai_search_show_setup_wizard');
delete_site_option('ai_search_show_setup_wizard');
delete_option('ai_search_setup_completed');
delete_site_option('ai_search_setup_completed');
delete_option('ai_search_api_key');
delete_site_option('ai_search_api_key');
delete_option('ai_search_similarity_threshold');
delete_site_option('ai_search_similarity_threshold');
delete_option('ai_search_searchable_post_types');
delete_site_option('ai_search_searchable_post_types');
delete_option('ai_search_badge_public');
delete_site_option('ai_search_badge_public');
delete_option('ai_search_openai_model');
delete_site_option('ai_search_openai_model');
delete_option('ai_search_hybrid_enabled');
delete_site_option('ai_search_hybrid_enabled');
delete_option('ai_search_hybrid_balance');
delete_site_option('ai_search_hybrid_balance');
delete_option('ai_search_highlight_enabled');
delete_site_option('ai_search_highlight_enabled');

// Delete Transients
delete_transient('ai_search_processed_titles');
delete_site_transient('ai_search_processed_titles');
delete_transient('ai_search_validation_data');
delete_site_transient('ai_search_validation_data');
delete_transient('ai_search_validation_error');
delete_site_transient('ai_search_validation_error');
delete_transient('ai_search_quota_error');
delete_site_transient('ai_search_quota_error');
delete_transient('ai_search_quota_api_error');
delete_site_transient('ai_search_quota_api_error');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ai_search_embedding_%', '_site_transient_ai_search_embedding_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('ai_search_used_fallback');
delete_site_transient('ai_search_used_fallback');
delete_transient('ai_search_no_results');
delete_site_transient('ai_search_no_results');
delete_transient('ai_search_activation_redirect');
delete_site_transient('ai_search_activation_redirect');
delete_transient('ai_search_vocabulary');
delete_site_transient('ai_search_vocabulary');

// Clear Cron Jobs
wp_clear_scheduled_hook('ai_search_rebuild_vocabulary');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ai_search_embedding' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ai_search_embedding' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ai_search_embedding' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ai_search_embedding' ) );

