#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ws_td_username'
wp option delete 'ws_td_password'
wp option delete 'ws_td_last_check'
wp option delete 'ws_td_pub_day'
wp option delete 'ws_td_freq'
wp option delete 'ws_td_last_tweet'
wp option delete 'ws_td_num_tweets'
wp option delete 'ws_td_includeRTs'
wp option delete 'ws_td_drop_replies'
wp option delete 'ws_td_min_tweets'
wp option delete 'ws_td_chrono'
wp option delete 'ws_td_title'
wp option delete 'ws_td_excerpt'
wp option delete 'ws_td_pub_time'
wp option delete 'ws_td_status'
wp option delete 'ws_td_category'
wp option delete 'ws_td_author'
wp option delete 'ws_td_post_tags'
wp option delete 'ws_td_showtime'
wp option delete 'ws_td_showdate'
wp option delete 'ws_td_conskey'
wp option delete 'ws_td_conssecret'
wp option delete 'ws_td_acctoken'
wp option delete 'ws_td_accsecret'
wp option delete 'ws_td_error'
wp option delete 'ws_td_dateFormat'

# Clear Cron Jobs
wp cron event delete 'ws_td_digest_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ws_tweeted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ws_tweeted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ws_tweeted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ws_tweeted'"
