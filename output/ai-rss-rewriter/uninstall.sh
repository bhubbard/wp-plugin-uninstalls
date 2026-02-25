#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'airsrefe_processing_mode'
wp option delete 'airsrefe_image_source'
wp option delete 'airsrefe_plugin_language'
wp option delete 'airsrefe_cache_initialized'
wp option delete 'airsrefe_cache_version'
wp option delete 'airssrewriter_plugin_language'
wp option delete 'airsrefe_log'
wp option delete 'airsrefe_version'
wp option delete 'airsrefe_prompts'
wp option delete 'airsrefe_feeds'
wp option delete 'airsrefe_logs'
wp option delete 'airsrefe_daily_costs'
wp option delete 'airsrefe_daily_budget_limit'
wp option delete 'airsrefe_daily_parsing_limit'
wp option delete 'airsrefe_block_parsing'
wp option delete 'airsrefe_enable_json_responses'
wp option delete 'airsrefe_exponential_backoff'
wp option delete 'airsrefe_api_timeout'
wp option delete 'airsrefe_model_fallback'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'airsrefe_model_%'"
wp option delete 'airsrefe_batch_priority_mode'
wp option delete 'airsrefe_smart_model_selection'
wp option delete 'airsrefe_last_budget_alert'
wp option delete 'airsrefe_last_budget_alert_level'
wp option delete 'airsrefe_performance_data'
wp option delete 'airsrefe_model_content'
wp option delete 'airsrefe_openai_key'
wp option delete 'airsrefe_cron_interval'
wp option delete 'airsrefe_cron_start_delay'
wp option delete 'airsrefe_cron_last_scheduled'
wp option delete 'airsrefe_cron_interval_used'
wp option delete 'airsrefe_cron_status'
wp option delete 'airsrefe_extract_full_content'
wp option delete 'airsrefe_extraction_stats'
wp option delete 'airsrefe_content_queue'
wp option delete 'airsrefe_content_extraction_method'
wp option delete 'airsrefe_daily_budget_used'
wp option delete 'airsrefe_image_queue'
wp option delete 'airsrefe_max_image_width'
wp option delete 'airsrefe_max_image_height'
wp option delete 'airsrefe_image_compression_quality'
wp option delete 'airsrefe_image_format'
wp option delete 'airsrefe_optimize_images'
wp option delete 'airsrefe_use_original_date'
wp option delete 'airsrefe_default_processing_level'
wp option delete 'airsrefe_per_feed_ai_enabled'
wp option delete 'airsrefe_generate_tags'
wp option delete 'airsrefe_max_title_length'
wp option delete 'airsrefe_cache_time'
wp option delete 'airsrefe_model_title'
wp option delete 'airsrefe_model_tags'
wp option delete 'airsrefe_model_seo'
wp option delete 'airsrefe_content_length_threshold'
wp option delete 'airsrefe_enable_budget_alerts'
wp option delete 'airsrefe_emergency_stop_enabled'
wp option delete 'airsrefe_image_size'
wp option delete 'airsrefe_image_quality'
wp option delete 'airsrefe_min_content_length'
wp option delete 'airsrefe_respect_robots_txt'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%list' OR option_name LIKE '_site_transient_%list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%cache' OR option_name LIKE '_site_transient_%cache'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%data' OR option_name LIKE '_site_transient_%data'"
wp transient delete 'airsrefe_translations_cache'

# Clear Cron Jobs
wp cron event delete 'airsrefe_process_queue_batch'
wp cron event delete 'airsrefe_queue_maintenance'
wp cron event delete 'airsrefe_auto_parse_event'
wp cron event delete 'airsrefe_performance_monitor'
wp cron event delete 'airsrefe_auto_adjust'
wp cron event delete 'airsrefe_warm_feeds'
wp cron event delete 'airsrefe_process_content_queue'
wp cron event delete 'airsrefe_process_image_queue'
wp cron event delete 'airsrefe_optimize_uploaded_image'
wp cron event delete 'airsrefe_warm_feed_cache'
wp cron event delete 'airsrefe_process_batch'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ai-rss-rewriter_processed_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ai-rss-rewriter_processed_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ai-rss-rewriter_processed_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ai-rss-rewriter_processed_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_airsrefe_source_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_airsrefe_source_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_airsrefe_source_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_airsrefe_source_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_airsrefe_processed_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_airsrefe_processed_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_airsrefe_processed_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_airsrefe_processed_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_airsrefe_content_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_airsrefe_content_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_airsrefe_content_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_airsrefe_content_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_airsrefe_image_optimized'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_airsrefe_image_optimized'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_airsrefe_image_optimized'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_airsrefe_image_optimized'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_airsrefe_image_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_airsrefe_image_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_airsrefe_image_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_airsrefe_image_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_airsrefe_content_extracted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_airsrefe_content_extracted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_airsrefe_content_extracted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_airsrefe_content_extracted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
