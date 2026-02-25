#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'maio_dashboard_api_key'
wp option delete 'maio_last_scan_results'
wp option delete 'maio_last_scan_url'
wp option delete 'maio_last_scan_timestamp'
wp option delete 'maio_improvement_points'
wp option delete 'maio_alt_coverage_improved'
wp option delete 'maio_alt_text_improved'
wp option delete 'maio_second_test_image_enabled'
wp option delete 'maio_second_test_image_id'
wp option delete 'maio_author_enabled'
wp option delete 'maio_author_name'
wp option delete 'maio_author_title'
wp option delete 'maio_author_bio'
wp option delete 'maio_reviewer_enabled'
wp option delete 'maio_reviewer_name'
wp option delete 'maio_reviewer_title'
wp option delete 'maio_reviewer_bio'
wp option delete 'maio_outbound_links_enabled'
wp option delete 'maio_outbound_links_content'
wp option delete 'maio_authoritative_links_enabled'
wp option delete 'maio_authoritative_links_content'
wp option delete 'maio_references_enabled'
wp option delete 'maio_references_content'
wp option delete 'maio_alt_coverage_percentage'
wp option delete 'maio_videos_added'
wp option delete 'maio_transcripts_added'
wp option delete 'maio_structured_lists_added'
wp option delete 'maio_freshness_indicators_enabled'
wp option delete 'maio_freshness_content_global'
wp option delete 'maio_qa_blocks_enabled'
wp option delete 'maio_definition_summary_enabled'
wp option delete 'endurance_cache_level'
wp option delete 'maio_faq_schema_enabled'
wp option delete 'maio_json_ld_enabled'
wp option delete 'maio_opengraph_enabled'
wp option delete 'maio_opengraph_content_global'
wp option delete 'maio_twitter_card_enabled'
wp option delete 'maio_twitter_card_content_global'
wp option delete 'maio_llms_txt_enabled'
wp option delete 'maio_publish_date_enabled'
wp option delete 'maio_publish_date_global'
wp option delete 'maio_update_date_enabled'
wp option delete 'maio_update_date_global'
wp option delete 'maio_last_modified_instructions_shown'
wp option delete 'maio_time_based_schema_enabled'
wp option delete 'maio_time_based_schema_global'
wp option delete 'maio_schema_product'
wp option delete 'maio_schema_event'
wp option delete 'maio_schema_breadcrumb'
wp option delete 'maio_schema_article'
wp option delete 'maio_key_topics'
wp option delete 'maio_target_audience'
wp option delete 'maio_content_type'
wp option delete 'maio_primary_entity'
wp option delete 'maio_brand_facebook'
wp option delete 'maio_brand_instagram'
wp option delete 'maio_brand_twitter'
wp option delete 'maio_brand_tiktok'
wp option delete 'maio_brand_youtube'
wp option delete 'maio_brand_linkedin'
wp option delete 'maio_video_guidance_shown'
wp option delete 'maio_transcript_guidance_shown'
wp option delete 'maio_second_test_image_improved'
wp option delete 'maio_ai_bot_visits'
wp option delete 'maio_cleanup_version'
wp option delete 'maio_plugin_bridge_token'
wp option delete 'maio_first_install_time'
wp option delete 'maio_site_uuid'
wp option delete 'maio_brand_name'
wp option delete 'maio_brand_description'
wp option delete 'maio_brand_website'
wp option delete 'maio_brand_email'
wp option delete 'maio_brand_country'
wp option delete 'maio_brand_location_extra'
wp option delete 'maio_brand_services'
wp option delete 'maio_brand_logo'
wp option delete 'maio_brand_logo_url'
wp option delete 'maio_international'
wp option delete 'maio_social_score'
wp option delete 'maio_global_metadata_home_only'
wp option delete 'maio_related_terms'
wp option delete 'maio_content_summary'
wp option delete 'maio_language_versions'
wp option delete 'maio_canonical_url'
wp option delete 'maio_last_updated'
wp option delete 'maio_author'
wp option delete 'maio_content_intent'
wp option delete 'maio_ai_generated'
wp option delete 'maio_schema_faq'
wp option delete 'maio_schema_faq_content'
wp option delete 'maio_schema_howto'
wp option delete 'maio_schema_howto_content'
wp option delete 'maio_schema_recipe'
wp option delete 'maio_schema_recipe_content'
wp option delete 'maio_first_version'
wp option delete 'rewrite_rules'
wp option delete 'maio_current_version'

# Delete Transients
wp transient delete 'maio_scanner_tune_page'
wp transient delete 'maio_settings_token_notice'

# Clear Cron Jobs
wp cron event delete 'maio_cleanup_old_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_author_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_author_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_author_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_author_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_author_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_author_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_author_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_author_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_author_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_author_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_author_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_author_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_author_bio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_author_bio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_author_bio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_author_bio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_reviewer_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_reviewer_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_reviewer_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_reviewer_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_reviewer_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_reviewer_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_reviewer_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_reviewer_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_reviewer_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_reviewer_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_reviewer_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_reviewer_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_reviewer_bio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_reviewer_bio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_reviewer_bio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_reviewer_bio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_outbound_links_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_outbound_links_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_outbound_links_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_outbound_links_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_outbound_links_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_outbound_links_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_outbound_links_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_outbound_links_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_authoritative_links_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_authoritative_links_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_authoritative_links_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_authoritative_links_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_authoritative_links_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_authoritative_links_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_authoritative_links_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_authoritative_links_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_references_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_references_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_references_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_references_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_references_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_references_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_references_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_references_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_alt_text_improved'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_alt_text_improved'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_alt_text_improved'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_alt_text_improved'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_alt_coverage_improved'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_alt_coverage_improved'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_alt_coverage_improved'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_alt_coverage_improved'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_alt_coverage_percentage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_alt_coverage_percentage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_alt_coverage_percentage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_alt_coverage_percentage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_videos_added'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_videos_added'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_videos_added'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_videos_added'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_transcripts_added'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_transcripts_added'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_transcripts_added'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_transcripts_added'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_structured_lists_added'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_structured_lists_added'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_structured_lists_added'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_structured_lists_added'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_json_ld_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_json_ld_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_json_ld_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_json_ld_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_json_ld_schema'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_json_ld_schema'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_json_ld_schema'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_json_ld_schema'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_opengraph_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_opengraph_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_opengraph_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_opengraph_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_opengraph_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_opengraph_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_opengraph_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_opengraph_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_twitter_card_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_twitter_card_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_twitter_card_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_twitter_card_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_twitter_card_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_twitter_card_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_twitter_card_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_twitter_card_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_publish_date_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_publish_date_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_publish_date_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_publish_date_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_publish_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_publish_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_publish_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_publish_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_update_date_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_update_date_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_update_date_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_update_date_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_update_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_update_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_update_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_update_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_freshness_indicators_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_freshness_indicators_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_freshness_indicators_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_freshness_indicators_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_freshness_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_freshness_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_freshness_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_freshness_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_time_based_schema_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_time_based_schema_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_time_based_schema_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_time_based_schema_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_time_based_schema'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_time_based_schema'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_time_based_schema'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_time_based_schema'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_custom_definition_summary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_custom_definition_summary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_custom_definition_summary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_custom_definition_summary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_custom_schema_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_custom_schema_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_custom_schema_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_custom_schema_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_custom_schema_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_custom_schema_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_custom_schema_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_custom_schema_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_analytics_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_analytics_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_analytics_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_analytics_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_analytics_notice_dismissed_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_analytics_notice_dismissed_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_analytics_notice_dismissed_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_analytics_notice_dismissed_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_already_reviewed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_already_reviewed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_already_reviewed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_already_reviewed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maio_review_notice_dismissed_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maio_review_notice_dismissed_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maio_review_notice_dismissed_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maio_review_notice_dismissed_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_maio_key_topics'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_maio_key_topics'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_maio_key_topics'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_maio_key_topics'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_maio_related_terms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_maio_related_terms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_maio_related_terms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_maio_related_terms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_maio_content_summary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_maio_content_summary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_maio_content_summary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_maio_content_summary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_maio_language_versions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_maio_language_versions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_maio_language_versions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_maio_language_versions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_maio_target_audience'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_maio_target_audience'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_maio_target_audience'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_maio_target_audience'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_maio_content_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_maio_content_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_maio_content_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_maio_content_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_maio_primary_entity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_maio_primary_entity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_maio_primary_entity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_maio_primary_entity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_maio_canonical_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_maio_canonical_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_maio_canonical_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_maio_canonical_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_maio_last_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_maio_last_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_maio_last_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_maio_last_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_maio_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_maio_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_maio_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_maio_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_maio_content_intent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_maio_content_intent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_maio_content_intent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_maio_content_intent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_maio_ai_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_maio_ai_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_maio_ai_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_maio_ai_generated'"
