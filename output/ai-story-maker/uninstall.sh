#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aistma_social_media_accounts'
wp option delete 'aistma_openai_api_key'
wp option delete 'aistma_prompts'
wp option delete 'aistma_unsplash_api_key'
wp option delete 'aistma_unsplash_api_secret'
wp option delete 'aistma_clear_log_cron'
wp option delete 'aistma_generate_story_cron'
wp option delete 'aistma_opt_auther'
wp option delete 'aistma_show_ai_attribution'
wp option delete 'aistma_show_exedotcom_attribution'
wp option delete 'aistma_widget_activity_days'
wp option delete 'aistma_widget_recent_posts_limit'
wp option delete 'aistma_widget_hide_empty_columns'
wp option delete 'aistma_subscription_email'
wp option delete 'aistma_widget_preferences'
wp option delete 'aistma_master_model'

# Delete Transients
wp transient delete 'aistma_generating_lock'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_aistma_facebook_oauth_state_%' OR option_name LIKE '_site_transient_aistma_facebook_oauth_state_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_aistma_facebook_app_id_%' OR option_name LIKE '_site_transient_aistma_facebook_app_id_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_aistma_facebook_app_secret_%' OR option_name LIKE '_site_transient_aistma_facebook_app_secret_%'"
wp transient delete 'aistma_exaig_cached_master_instructions'

# Clear Cron Jobs
wp cron event delete 'schd_ai_story_maker_clear_log'
wp cron event delete 'aistma_generate_story_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aistma_facebook_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aistma_facebook_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aistma_facebook_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aistma_facebook_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ai_story_maker_enhancements_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ai_story_maker_enhancements_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ai_story_maker_enhancements_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ai_story_maker_enhancements_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ai_story_maker_enhancements_history'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ai_story_maker_enhancements_history'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ai_story_maker_enhancements_history'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ai_story_maker_enhancements_history'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ai_story_maker_package_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ai_story_maker_package_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ai_story_maker_package_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ai_story_maker_package_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ai_story_maker_request_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ai_story_maker_request_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ai_story_maker_request_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ai_story_maker_request_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ai_story_maker_sources'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ai_story_maker_sources'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ai_story_maker_sources'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ai_story_maker_sources'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ai_story_maker_total_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ai_story_maker_total_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ai_story_maker_total_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ai_story_maker_total_tokens'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ai_story_maker_generated_via'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ai_story_maker_generated_via'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ai_story_maker_generated_via'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ai_story_maker_generated_via'"
