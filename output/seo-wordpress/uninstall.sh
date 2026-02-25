#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aiseo_total_api_requests'
wp option delete 'aiseo_token_usage_total'
wp option delete 'aiseo_token_usage_month'
wp option delete 'aiseo_posts_analyzed_count'
wp option delete 'aiseo_metadata_generated_count'
wp option delete 'aiseo_ai_posts_created_count'
wp option delete 'aiseo_redirects'
wp option delete 'aiseo_enabled_post_types'
wp option delete 'aiseo_model'
wp option delete 'aiseo_max_tokens'
wp option delete 'aiseo_temperature'
wp option delete 'aiseo_cache_ttl'
wp option delete 'aiseo_rate_limit'
wp option delete 'aiseo_auto_generate_title'
wp option delete 'aiseo_auto_generate_description'
wp option delete 'aiseo_enable_schema'
wp option delete 'aiseo_enable_sitemap'
wp option delete 'aiseo_enable_logging'
wp option delete 'aiseo_log_level'
wp option delete 'aiseo_api_model'
wp option delete 'aiseo_api_max_tokens'
wp option delete 'aiseo_api_temperature'
wp option delete 'aiseo_api_timeout'
wp option delete 'aiseo_rate_limit_per_minute'
wp option delete 'aiseo_api_validation_status'
wp option delete 'aiseo_last_api_validation'
wp option delete 'aiseo_backlinks'
wp option delete 'aiseo_competitors'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'aiseo_competitor_analysis_%'"
wp option delete 'aiseo_supported_post_types'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'aiseo_archive_%'"
wp option delete 'aiseo_openai_api_key'
wp option delete 'aiseo_version'
wp option delete 'praison_seo_taxonomy_meta'
wp option delete 'praison_seo_home_title'
wp option delete 'praison_seo_home_description'
wp option delete 'praison_seo_home_keywords'
wp option delete 'praison_seo_ga_id'
wp option delete 'praison_seo_rss_before'
wp option delete 'praison_seo_rss_after'
wp option delete 'aiseo_enable_social_tags'
wp option delete 'aiseo_sitemap_post_types'
wp option delete 'aiseo_twitter_site'
wp option delete 'aiseo_default_og_image'

# Delete Transients
wp transient delete 'aiseo_sitemap_cache'
wp transient delete 'aiseo_api_failures'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_aiseo_user_requests_%' OR option_name LIKE '_site_transient_aiseo_user_requests_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_aiseo_user_requests_start_%' OR option_name LIKE '_site_transient_aiseo_user_requests_start_%'"
wp transient delete 'aiseo_api_cooldown'
wp transient delete 'aiseo_redirect_stats'
wp transient delete 'aiseo_404_summary'

# Clear Cron Jobs
wp cron event delete 'aiseo_cache_warming'
wp cron event delete 'aiseo_process_queue'
wp cron event delete 'aiseo_cleanup_logs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_seo_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_seo_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_seo_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_seo_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_meta_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_meta_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_meta_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_meta_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_canonical_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_canonical_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_canonical_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_canonical_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_robots_index'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_robots_index'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_robots_index'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_robots_index'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_robots_follow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_robots_follow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_robots_follow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_robots_follow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_ai_generated_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_ai_generated_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_ai_generated_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_ai_generated_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_generation_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_generation_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_generation_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_generation_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_ai_generated_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_ai_generated_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_ai_generated_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_ai_generated_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_schema_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_schema_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_schema_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_schema_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_og_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_og_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_og_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_og_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_og_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_og_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_og_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_og_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_twitter_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_twitter_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_twitter_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_twitter_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_twitter_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_twitter_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_twitter_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_twitter_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_analysis_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_analysis_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_analysis_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_analysis_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_last_analyzed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_last_analyzed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_last_analyzed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_last_analyzed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_faqs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_faqs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_faqs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_faqs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_faq_schema'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_faq_schema'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_faq_schema'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_faq_schema'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_meta_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_meta_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_meta_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_meta_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_ai_generated_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_ai_generated_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_ai_generated_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_ai_generated_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_alt_generated_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_alt_generated_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_alt_generated_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_alt_generated_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_canonical'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_canonical'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_canonical'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_canonical'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_canonical_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_canonical_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_canonical_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_canonical_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_meta_ab_test'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_meta_ab_test'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_meta_ab_test'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_meta_ab_test'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_meta_variations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_meta_variations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_meta_variations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_meta_variations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_nofollow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_nofollow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_nofollow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_nofollow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_noarchive'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_noarchive'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_noarchive'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_noarchive'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_nosnippet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_nosnippet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_nosnippet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_nosnippet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_outline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_outline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_outline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_outline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_ai_generated_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_ai_generated_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_ai_generated_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_ai_generated_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_sitemap_changefreq'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_sitemap_changefreq'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_sitemap_changefreq'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_sitemap_changefreq'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_sitemap_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_sitemap_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_sitemap_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_sitemap_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_og_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_og_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_og_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_og_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_og_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_og_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_og_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_og_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_twitter_card_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_twitter_card_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_twitter_card_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_twitter_card_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_twitter_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_twitter_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_twitter_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_twitter_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_schema'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_schema'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_schema'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_schema'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_unified_report'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_unified_report'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_unified_report'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_unified_report'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiseo_unified_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiseo_unified_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiseo_unified_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiseo_unified_score'"
