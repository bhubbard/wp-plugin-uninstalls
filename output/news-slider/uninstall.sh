#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'comet_breaking_news_common'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slide_bg_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slide_bg_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slide_bg_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slide_bg_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'b_news_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'b_news_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'b_news_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'b_news_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'b_news_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'b_news_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'b_news_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'b_news_link'"
