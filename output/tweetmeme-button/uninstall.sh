#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tm_api_app_id'
wp option delete 'tm_api_app_key'
wp option delete 'tm_source'
wp option delete 'tm_version'
wp option delete 'tm_url_shortner'
wp option delete 'tm_api_key'
wp option delete 'tm_space'
wp option delete 'tm_hashtags'
wp option delete 'tm_hashtags_tags'
wp option delete 'tm_style'
wp option delete 'tm_where'
wp option delete 'tm_display_page'
wp option delete 'tm_display_front'
wp option delete 'tm_display_rss'
wp option delete 'tm_ping'
wp option delete 'tm_rss_where'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tm_hashtags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tm_hashtags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tm_hashtags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tm_hashtags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tweetmeme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tweetmeme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tweetmeme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tweetmeme'"
