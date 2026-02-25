<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('airsrefe_processing_mode');
delete_site_option('airsrefe_processing_mode');
delete_option('airsrefe_image_source');
delete_site_option('airsrefe_image_source');
delete_option('airsrefe_plugin_language');
delete_site_option('airsrefe_plugin_language');
delete_option('airsrefe_cache_initialized');
delete_site_option('airsrefe_cache_initialized');
delete_option('airsrefe_cache_version');
delete_site_option('airsrefe_cache_version');
delete_option('airssrewriter_plugin_language');
delete_site_option('airssrewriter_plugin_language');
delete_option('airsrefe_log');
delete_site_option('airsrefe_log');
delete_option('airsrefe_version');
delete_site_option('airsrefe_version');
delete_option('airsrefe_prompts');
delete_site_option('airsrefe_prompts');
delete_option('airsrefe_feeds');
delete_site_option('airsrefe_feeds');
delete_option('airsrefe_logs');
delete_site_option('airsrefe_logs');
delete_option('airsrefe_daily_costs');
delete_site_option('airsrefe_daily_costs');
delete_option('airsrefe_daily_budget_limit');
delete_site_option('airsrefe_daily_budget_limit');
delete_option('airsrefe_daily_parsing_limit');
delete_site_option('airsrefe_daily_parsing_limit');
delete_option('airsrefe_block_parsing');
delete_site_option('airsrefe_block_parsing');
delete_option('airsrefe_enable_json_responses');
delete_site_option('airsrefe_enable_json_responses');
delete_option('airsrefe_exponential_backoff');
delete_site_option('airsrefe_exponential_backoff');
delete_option('airsrefe_api_timeout');
delete_site_option('airsrefe_api_timeout');
delete_option('airsrefe_model_fallback');
delete_site_option('airsrefe_model_fallback');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'airsrefe_model_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('airsrefe_batch_priority_mode');
delete_site_option('airsrefe_batch_priority_mode');
delete_option('airsrefe_smart_model_selection');
delete_site_option('airsrefe_smart_model_selection');
delete_option('airsrefe_last_budget_alert');
delete_site_option('airsrefe_last_budget_alert');
delete_option('airsrefe_last_budget_alert_level');
delete_site_option('airsrefe_last_budget_alert_level');
delete_option('airsrefe_performance_data');
delete_site_option('airsrefe_performance_data');
delete_option('airsrefe_model_content');
delete_site_option('airsrefe_model_content');
delete_option('airsrefe_openai_key');
delete_site_option('airsrefe_openai_key');
delete_option('airsrefe_cron_interval');
delete_site_option('airsrefe_cron_interval');
delete_option('airsrefe_cron_start_delay');
delete_site_option('airsrefe_cron_start_delay');
delete_option('airsrefe_cron_last_scheduled');
delete_site_option('airsrefe_cron_last_scheduled');
delete_option('airsrefe_cron_interval_used');
delete_site_option('airsrefe_cron_interval_used');
delete_option('airsrefe_cron_status');
delete_site_option('airsrefe_cron_status');
delete_option('airsrefe_extract_full_content');
delete_site_option('airsrefe_extract_full_content');
delete_option('airsrefe_extraction_stats');
delete_site_option('airsrefe_extraction_stats');
delete_option('airsrefe_content_queue');
delete_site_option('airsrefe_content_queue');
delete_option('airsrefe_content_extraction_method');
delete_site_option('airsrefe_content_extraction_method');
delete_option('airsrefe_daily_budget_used');
delete_site_option('airsrefe_daily_budget_used');
delete_option('airsrefe_image_queue');
delete_site_option('airsrefe_image_queue');
delete_option('airsrefe_max_image_width');
delete_site_option('airsrefe_max_image_width');
delete_option('airsrefe_max_image_height');
delete_site_option('airsrefe_max_image_height');
delete_option('airsrefe_image_compression_quality');
delete_site_option('airsrefe_image_compression_quality');
delete_option('airsrefe_image_format');
delete_site_option('airsrefe_image_format');
delete_option('airsrefe_optimize_images');
delete_site_option('airsrefe_optimize_images');
delete_option('airsrefe_use_original_date');
delete_site_option('airsrefe_use_original_date');
delete_option('airsrefe_default_processing_level');
delete_site_option('airsrefe_default_processing_level');
delete_option('airsrefe_per_feed_ai_enabled');
delete_site_option('airsrefe_per_feed_ai_enabled');
delete_option('airsrefe_generate_tags');
delete_site_option('airsrefe_generate_tags');
delete_option('airsrefe_max_title_length');
delete_site_option('airsrefe_max_title_length');
delete_option('airsrefe_cache_time');
delete_site_option('airsrefe_cache_time');
delete_option('airsrefe_model_title');
delete_site_option('airsrefe_model_title');
delete_option('airsrefe_model_tags');
delete_site_option('airsrefe_model_tags');
delete_option('airsrefe_model_seo');
delete_site_option('airsrefe_model_seo');
delete_option('airsrefe_content_length_threshold');
delete_site_option('airsrefe_content_length_threshold');
delete_option('airsrefe_enable_budget_alerts');
delete_site_option('airsrefe_enable_budget_alerts');
delete_option('airsrefe_emergency_stop_enabled');
delete_site_option('airsrefe_emergency_stop_enabled');
delete_option('airsrefe_image_size');
delete_site_option('airsrefe_image_size');
delete_option('airsrefe_image_quality');
delete_site_option('airsrefe_image_quality');
delete_option('airsrefe_min_content_length');
delete_site_option('airsrefe_min_content_length');
delete_option('airsrefe_respect_robots_txt');
delete_site_option('airsrefe_respect_robots_txt');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%list', '_site_transient_%list' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%cache', '_site_transient_%cache' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%data', '_site_transient_%data' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('airsrefe_translations_cache');
delete_site_transient('airsrefe_translations_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('airsrefe_process_queue_batch');
wp_clear_scheduled_hook('airsrefe_queue_maintenance');
wp_clear_scheduled_hook('airsrefe_auto_parse_event');
wp_clear_scheduled_hook('airsrefe_performance_monitor');
wp_clear_scheduled_hook('airsrefe_auto_adjust');
wp_clear_scheduled_hook('airsrefe_warm_feeds');
wp_clear_scheduled_hook('airsrefe_process_content_queue');
wp_clear_scheduled_hook('airsrefe_process_image_queue');
wp_clear_scheduled_hook('airsrefe_optimize_uploaded_image');
wp_clear_scheduled_hook('airsrefe_warm_feed_cache');
wp_clear_scheduled_hook('airsrefe_process_batch');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ai-rss-rewriter_processed_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ai-rss-rewriter_processed_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ai-rss-rewriter_processed_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ai-rss-rewriter_processed_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_airsrefe_source_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_airsrefe_source_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_airsrefe_source_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_airsrefe_source_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_airsrefe_processed_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_airsrefe_processed_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_airsrefe_processed_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_airsrefe_processed_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_airsrefe_content_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_airsrefe_content_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_airsrefe_content_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_airsrefe_content_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_airsrefe_image_optimized' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_airsrefe_image_optimized' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_airsrefe_image_optimized' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_airsrefe_image_optimized' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_airsrefe_image_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_airsrefe_image_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_airsrefe_image_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_airsrefe_image_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_airsrefe_content_extracted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_airsrefe_content_extracted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_airsrefe_content_extracted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_airsrefe_content_extracted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rank_math_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rank_math_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rank_math_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rank_math_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rank_math_focus_keyword' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rank_math_focus_keyword' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rank_math_focus_keyword' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rank_math_focus_keyword' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yoast_wpseo_focuskw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yoast_wpseo_focuskw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yoast_wpseo_focuskw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yoast_wpseo_focuskw' ) );

