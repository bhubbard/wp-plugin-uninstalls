#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tb_via'
wp option delete 'tb_hashtag'
wp option delete 'tb_lang'
wp option delete 'tb_related'
wp option delete 'tb_related_accounts'
wp option delete 'tb_style'
wp option delete 'tb_where'
wp option delete 'tb_display_page'
wp option delete 'tb_display_front'
wp option delete 'tb_display_rss'
wp option delete 'tb_rss_where'
wp option delete 'tb_ping'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tb_related'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tb_related'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tb_related'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tb_related'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'TweetButton'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'TweetButton'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'TweetButton'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'TweetButton'"
