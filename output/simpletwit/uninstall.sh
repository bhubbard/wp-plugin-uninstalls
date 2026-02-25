#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stf_auth_creds'
wp option delete 'stf_twit'
wp option delete 'stf_last_tweet'
wp option delete 'stf_creds_info'

# Clear Cron Jobs
wp cron event delete 'stf_tweet_import'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'raw_tweet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'raw_tweet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'raw_tweet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'raw_tweet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tweet_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tweet_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tweet_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tweet_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_retweet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_retweet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_retweet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_retweet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_reply'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_reply'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_reply'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_reply'"
