#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zyflora_research_page_id'
wp option delete 'zyflora_article_page_id'
wp option delete 'zyflora_claude_api_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zyflora_saved_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zyflora_saved_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zyflora_saved_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zyflora_saved_keywords'"
