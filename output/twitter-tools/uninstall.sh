#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aktt_v3_settings'
wp option delete 'aktt_v3_accounts'
wp option delete 'aktt_twitter_username'

# Clear Cron Jobs
wp cron event delete 'aktt_backfill_tweets'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aktt_tweet_raw_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aktt_tweet_raw_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aktt_tweet_raw_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aktt_tweet_raw_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aktt_tweet_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aktt_tweet_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aktt_tweet_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aktt_tweet_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aktt_30_backfill_needed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aktt_30_backfill_needed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aktt_30_backfill_needed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aktt_30_backfill_needed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aktt_tweet_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aktt_tweet_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aktt_tweet_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aktt_tweet_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aktt_tweet_blog_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aktt_tweet_blog_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aktt_tweet_blog_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aktt_tweet_blog_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aktt_upgraded_30'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aktt_upgraded_30'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aktt_upgraded_30'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aktt_upgraded_30'"
