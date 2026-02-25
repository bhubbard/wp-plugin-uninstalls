#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'infapg_keywords'
wp option delete 'infapg_category'
wp option delete 'infapg_api_type'
wp option delete 'infapg_openai_api_key'
wp option delete 'infapg_gemini_api_key'
wp option delete 'infapg_grok_api_key'
wp option delete 'infapg_article_language'
wp option delete 'infapg_keyword_index'

# Clear Cron Jobs
wp cron event delete 'infapg_auto_publish_articles'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_infapg_publish_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_infapg_publish_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_infapg_publish_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_infapg_publish_date'"
