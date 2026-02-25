#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ainewsposter_last_tab_index'
wp option delete 'ainewsposter_news_query'
wp option delete 'ainewsposter_article_prompt'
wp option delete 'ainewsposter_article_author'
wp option delete 'ainewsposter_news_count'
wp option delete 'ainewsposter_article_categories'
wp option delete 'ainewsposter_article_tags'
wp option delete 'ainewsposter_bing_api_key'
wp option delete 'ainewsposter_pagepixels_api_key'
wp option delete 'ainewsposter_openai_api_key'
wp option delete 'ainewsposter_auto_publish'
wp option delete 'ainewsposter_news_language'
wp option delete 'ainewsposter_news_sortby'
wp option delete 'ainewsposter_news_freshness'
wp option delete 'ainewsposter_news_mkt'
wp option delete 'ainewsposter_openai_model'

# Delete Transients
wp transient delete 'ainewsposter-redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'original_news_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'original_news_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'original_news_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'original_news_url'"
