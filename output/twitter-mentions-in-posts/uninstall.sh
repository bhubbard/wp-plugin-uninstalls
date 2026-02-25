#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tmip-embed'
wp option delete 'tmip-mention-text'
wp option delete 'tmip-num-of-tweets'
wp option delete 'tmip-automatic'

# Clear Cron Jobs
wp cron event delete 'tmip_hour_event'
wp cron event delete 'tmip_load_post_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tmip_twitter_mentions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tmip_twitter_mentions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tmip_twitter_mentions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tmip_twitter_mentions'"
