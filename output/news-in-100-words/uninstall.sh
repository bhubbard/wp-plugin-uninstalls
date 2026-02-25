#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hundred_words_news_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hundred_words_news_thunderbolt_news'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hundred_words_news_thunderbolt_news'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hundred_words_news_thunderbolt_news'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hundred_words_news_thunderbolt_news'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hundred_words_news_post_summary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hundred_words_news_post_summary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hundred_words_news_post_summary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hundred_words_news_post_summary'"
