#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'liveblogging_method'
wp option delete 'liveblogging_update_effect'
wp option delete 'liveblogging_enable_twitter'
wp option delete 'liveblogging_disable_twitter_comments'
wp option delete 'liveblogging_comments'
wp option delete 'liveblogging_date_style'
wp option delete 'liveblogging_style'
wp option delete 'liveblogging_meteor_host'
wp option delete 'liveblogging_meteor_controller'
wp option delete 'liveblogging_meteor_controller_port'
wp option delete 'liveblogging_id'
wp option delete 'liveblogging_unhooks'
wp option delete 'liveblogging_timed_update_freq'
wp option delete 'liveblogging_date'
wp option delete 'liveblogging_twitter_token'
wp option delete 'liveblogging_twitter_request_token'
wp option delete 'liveblogging_twitter_request_secret'
wp option delete 'liveblog_assigned_ids'
wp option delete 'liveblogging_twitter_secret'
wp option delete 'liveblogging_imported_tweets'

# Clear Cron Jobs
wp cron event delete 'live_blogging_check_twitter'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_liveblog_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_liveblog_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_liveblog_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_liveblog_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_liveblog'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_liveblog'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_liveblog'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_liveblog'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_liveblogging_tweeted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_liveblogging_tweeted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_liveblogging_tweeted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_liveblogging_tweeted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'liveblogging_hashtag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'liveblogging_hashtag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'liveblogging_hashtag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'liveblogging_hashtag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_liveblogging_deleted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_liveblogging_deleted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_liveblogging_deleted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_liveblogging_deleted'"
