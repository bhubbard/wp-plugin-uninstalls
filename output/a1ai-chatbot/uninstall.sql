-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('a1ai_openai_api_key', 'a1ai_edd_api_key', 'a1ai_upgrade_license', 'a1ai_default_model', 'a1ai_default_temperature', 'a1ai_default_max_tokens', 'a1ai_global_chatbot_enabled', 'a1ai_global_chatbot_id', 'a1ai_global_chatbot_position', 'a1ai_keep_conversation_history', 'a1ai_conversation_retention_days', 'a1ai_keep_data_on_uninstall', 'a1ai_show_powered_by', 'a1ai_content_awareness_settings', 'a1ai_action_guidance_settings', 'a1ai_conversation_settings', 'a1ai_contact_requests', 'a1ai_reviews', 'a1ai_db_version', 'a1ai_review_chatbot_id', 'a1ai_rating_system', 'a1ai_review_intro_text', 'a1ai_review_google_link', 'a1ai_review_yelp_link', 'a1ai_review_facebook_link', 'a1ai_review_other_link', 'a1ai_review_other_name', 'a1ai_min_star_threshold', 'a1ai_min_scale_threshold', 'a1ai_upgrade_license_status', 'a1ai_conversion_tracking', 'a1ai_adjustments_has_temperature', 'a1ai_activation_redirect', 'a1ai_usage_stats_cache');
DELETE FROM wp_options WHERE option_name LIKE 'a1ai_%';
DELETE FROM wp_options WHERE option_name LIKE 'a1ai_assistant_context_%';
DELETE FROM wp_options WHERE option_name LIKE 'a1ai_review_submitted_%';

