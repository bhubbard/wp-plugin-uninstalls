#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aikct_free_api_activated'
wp option delete 'aikct_apikey_token_huggingface'
wp option delete 'aikct_apikey_gpt35'
wp option delete 'aikct_apikey_gpt4o'
wp option delete 'aikct_apikey_gemini'
wp option delete 'aikct_apikey_token_cloudfalre'
wp option delete 'aikct_apikey_account_id_cloudfalre'
wp option delete 'aikct_apikey_languages'
wp option delete 'aikct_images'
wp option delete 'aikct_tags'
wp option delete 'aikct_comment'
wp option delete 'aikct_idea_title'
wp option delete 'aikct_blogfromyoutube'
wp option delete 'aikct_rewrite_from_url'
wp option delete 'aikct_rewrite_post_cron_time'
wp option delete 'aikct_rewrite_content_old_post'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aikct_prompt_params'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aikct_prompt_params'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aikct_prompt_params'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aikct_prompt_params'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_old_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_old_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_old_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_old_content'"
