#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ainews_language'
wp option delete 'ainews_post_status'
wp option delete 'ainews_schedule_interval'
wp option delete 'ainews_article_count'
wp option delete 'ainews_selected_topics'
wp option delete 'ainews_prompt_type'
wp option delete 'ainews_prompt_language'
wp option delete 'ainews_custom_interval'
wp option delete 'ainews_auto_enabled'
wp option delete 'ainews_schedule_paused'
wp option delete 'ainews_auto_generated_count'
wp option delete 'ainews_api_key'
wp option delete 'ainews_keep_data_on_uninstall'
wp option delete 'ainews_post_category'
wp option delete 'ainews_last_auto_run'
wp option delete 'ainews_last_auto_interval'
wp option delete 'ainews_custom_prompt'
wp option delete 'ainews_auto_featured_image'
wp option delete 'ainews_image_generation_service'
wp option delete 'ainews_openai_api_key'
wp option delete 'ainews_siliconflow_api_key'
wp option delete 'ainews_deepseek_api_key'
wp option delete 'ainews_image_dimensions'
wp option delete 'ainews_image_style'
wp option delete 'ainews_unsplash_access_key'
wp option delete 'ainews_pixabay_api_key'

# Clear Cron Jobs
wp cron event delete 'ainews_generate_articles'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ainews_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ainews_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ainews_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ainews_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ainews_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ainews_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ainews_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ainews_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ainews_featured_image_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ainews_featured_image_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ainews_featured_image_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ainews_featured_image_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ainews_featured_image_service'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ainews_featured_image_service'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ainews_featured_image_service'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ainews_featured_image_service'"
