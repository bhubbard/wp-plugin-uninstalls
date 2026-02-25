#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fyp_news_ticker_items'
wp option delete 'fyp-news-ticker|settings|speed'
wp option delete 'fyp-news-ticker|settings|direction'
wp option delete 'fyp-news-ticker|settings|pause_on_hover'
wp option delete 'fyp-news-ticker|settings|show_icons'
wp option delete 'fyp-news-ticker|settings|template'
wp option delete 'fyp-news-ticker|design|bg_color'
wp option delete 'fyp-news-ticker|design|text_color'
wp option delete 'fyp-news-ticker|design|link_color'
wp option delete 'fyp-news-ticker|design|icon_color'
wp option delete 'fyp-news-ticker|design|height'
wp option delete 'fyp-news-ticker|design|font_size'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_news_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_news_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_news_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_news_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_feed_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_feed_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_feed_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_feed_settings'"
