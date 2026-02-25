-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aistma_social_media_accounts', 'aistma_openai_api_key', 'aistma_prompts', 'aistma_unsplash_api_key', 'aistma_unsplash_api_secret', 'aistma_clear_log_cron', 'aistma_generate_story_cron', 'aistma_opt_auther', 'aistma_show_ai_attribution', 'aistma_show_exedotcom_attribution', 'aistma_widget_activity_days', 'aistma_widget_recent_posts_limit', 'aistma_widget_hide_empty_columns', 'aistma_subscription_email', 'aistma_widget_preferences', 'aistma_master_model', 'aistma_generating_lock', 'aistma_exaig_cached_master_instructions');
DELETE FROM wp_options WHERE option_name LIKE 'aistma_facebook_oauth_state_%';
DELETE FROM wp_options WHERE option_name LIKE 'aistma_facebook_app_id_%';
DELETE FROM wp_options WHERE option_name LIKE 'aistma_facebook_app_secret_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_aistma_facebook_post_id', 'ai_story_maker_enhancements_limit', 'ai_story_maker_enhancements_history', '_yoast_wpseo_metadesc', 'ai_story_maker_package_id', '_aioseo_description', 'ai_story_maker_request_id', 'ai_story_maker_sources', 'ai_story_maker_total_tokens', 'ai_story_maker_generated_via');
DELETE FROM wp_usermeta WHERE meta_key IN ('_aistma_facebook_post_id', 'ai_story_maker_enhancements_limit', 'ai_story_maker_enhancements_history', '_yoast_wpseo_metadesc', 'ai_story_maker_package_id', '_aioseo_description', 'ai_story_maker_request_id', 'ai_story_maker_sources', 'ai_story_maker_total_tokens', 'ai_story_maker_generated_via');
DELETE FROM wp_termmeta WHERE meta_key IN ('_aistma_facebook_post_id', 'ai_story_maker_enhancements_limit', 'ai_story_maker_enhancements_history', '_yoast_wpseo_metadesc', 'ai_story_maker_package_id', '_aioseo_description', 'ai_story_maker_request_id', 'ai_story_maker_sources', 'ai_story_maker_total_tokens', 'ai_story_maker_generated_via');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_aistma_facebook_post_id', 'ai_story_maker_enhancements_limit', 'ai_story_maker_enhancements_history', '_yoast_wpseo_metadesc', 'ai_story_maker_package_id', '_aioseo_description', 'ai_story_maker_request_id', 'ai_story_maker_sources', 'ai_story_maker_total_tokens', 'ai_story_maker_generated_via');

