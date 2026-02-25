#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wtt_twitter_username'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jd_wp_tweet_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jd_wp_tweet_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jd_wp_tweet_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jd_wp_tweet_id'"
