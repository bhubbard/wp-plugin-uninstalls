#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aicw_allowed_hosts'
wp option delete 'aicw_default_host'
wp option delete 'aicw_api_model'
wp option delete 'aicw_enable_redirection'
wp option delete 'aicw_enable_img_generation'
wp option delete 'aicw_log_retention_period'
wp option delete 'aicw_gemini_ai_model'
wp option delete 'aicw_chatgpt_ai_model'
wp option delete 'aicw_pexels_api_key'
wp option delete 'aicw_gemini_api_key'
wp option delete 'aicw_gemini_models'
wp option delete 'aicw_chatgpt_api_secret_key'
wp option delete 'aicw_chatgpt_models'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dismissed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reminded_until'"
wp option delete 'aicwp_campaign_frequency'
wp option delete 'aicw_version'
wp option delete 'aicw_is_enabled'
wp option delete 'aicw_flash_notices'

# Delete Transients
wp transient delete 'aicw_notices_last_cleanup'

# Clear Cron Jobs
wp cron event delete 'aicw_generate_title'
wp cron event delete 'aicw_generate_content'
wp cron event delete 'aicw_generate_thumbnail'
wp cron event delete 'aicw_publish_posts'
wp cron event delete 'aicw_cleanup_logs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aicw_campaign_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aicw_campaign_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aicw_campaign_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aicw_campaign_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aicw_campaign_host'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aicw_campaign_host'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aicw_campaign_host'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aicw_campaign_host'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aicw_campaign_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aicw_campaign_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aicw_campaign_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aicw_campaign_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aicw_rss_feed_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aicw_rss_feed_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aicw_rss_feed_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aicw_rss_feed_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aicw_block_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aicw_block_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aicw_block_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aicw_block_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aicw_search_replaces'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aicw_search_replaces'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aicw_search_replaces'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aicw_search_replaces'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aicw_html_cleaners'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aicw_html_cleaners'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aicw_html_cleaners'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aicw_html_cleaners'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aicw_insert_content_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aicw_insert_content_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aicw_insert_content_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aicw_insert_content_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aicw_insert_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aicw_insert_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aicw_insert_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aicw_insert_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aicw_campaign_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aicw_campaign_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aicw_campaign_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aicw_campaign_target'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aicw_generate_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aicw_generate_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aicw_generate_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aicw_generate_thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aicw_post_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aicw_post_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aicw_post_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aicw_post_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aicw_completed_post_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aicw_completed_post_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aicw_completed_post_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aicw_completed_post_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aicw_campaign_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aicw_campaign_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aicw_campaign_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aicw_campaign_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aicw_related_campaign'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aicw_related_campaign'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aicw_related_campaign'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aicw_related_campaign'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aicw_content_source_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aicw_content_source_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aicw_content_source_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aicw_content_source_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aicw_generate_content_attempts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aicw_generate_content_attempts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aicw_generate_content_attempts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aicw_generate_content_attempts'"
