#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qunb_ga_token'
wp option delete 'qunb_ga_refresh_token'
wp option delete 'qunb_gp_emails'
wp option delete 'qunb_ga_profile'
wp option delete 'qunb_ga_profile_label'
wp option delete 'qunb_ga_profile_timezone'
wp option delete 'qunb_ga_web_property'
wp option delete 'qunb_ga_account'
wp option delete 'qunb_ghost_avg'
wp option delete 'qunb_ghost_avg_cumul'
wp option delete 'qunb_facebook_url'
wp option delete 'qunb_facebook_likes'
wp option delete 'qunb_twitter_screen_name'
wp option delete 'qunb_twitter_followers'
wp option delete 'qunb_nb_connections'
wp option delete 'qunb_test'
wp option delete 'qunb_cron_error'

# Clear Cron Jobs
wp cron event delete 'qunb_single_cron_hook'
wp cron event delete 'qunb_single_cron2_hook'
wp cron event delete 'qunb_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pageViews_cumul'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pageViews_cumul'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pageViews_cumul'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pageViews_cumul'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pageViews'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pageViews'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pageViews'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pageViews'"
