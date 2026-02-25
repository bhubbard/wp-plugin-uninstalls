#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yotuwp_pro_install_date'
wp option delete 'yotuwp_tracking_notice'
wp option delete 'yotuwp_install_date'
wp option delete 'yotuwp_allow_tracking'
wp option delete 'yotuwp_tracking_last_send'
wp option delete 'yotu-api'
wp option delete 'yotuwp_rating_date'
wp option delete 'yotu-settings'
wp option delete 'yotu-player'
wp option delete 'yotu-styling'
wp option delete 'yotu-effects'
wp option delete 'yotu-cache'
wp option delete 'yotuwp_activation_redirect'
wp option delete 'yotuwp_presets'

# Clear Cron Jobs
wp cron event delete 'yotuwp_cache_event'
wp cron event delete 'yotuwp_weekly_scheduled_events'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yotuwp_scgen_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yotuwp_scgen_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yotuwp_scgen_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yotuwp_scgen_ignore_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yotuwp_rating_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yotuwp_rating_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yotuwp_rating_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yotuwp_rating_ignore_notice'"
