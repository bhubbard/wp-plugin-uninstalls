#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'itap_interval_time'
wp option delete 'itap_post_type'
wp option delete 'itap_user_id'
wp option delete 'itap_search_string'
wp option delete 'itap_consumer_key'
wp option delete 'itap_consumer_secret'
wp option delete 'itap_access_token'
wp option delete 'itap_access_token_secret'
wp option delete 'itap_tweet_from'
wp option delete 'itap_search_result_type'
wp option delete 'itap_tweets_count'
wp option delete 'itap_assigned_category'
wp option delete 'itap_post_status'
wp option delete 'itap_post_comment_status'
wp option delete 'itap_import_retweets'
wp option delete 'itap_exclude_replies'
wp option delete 'itap_display_retweets_username'
wp option delete 'itap_wp_time_as_published_date'
wp option delete 'itap_post_title'
wp option delete 'itap_post_title_limit'

# Clear Cron Jobs
wp cron event delete 'import_tweets_as_posts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tweet_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tweet_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tweet_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tweet_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tweet_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tweet_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tweet_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tweet_url'"
