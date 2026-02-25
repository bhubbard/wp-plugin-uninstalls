#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wplocalseo_cleaner_time'
wp option delete 'wplocalseo_cleaner_time_old'
wp option delete 'wplocalseo_cleaner_autoptimize'
wp option delete 'wplocalseo_cleaner_w3totalcache'
wp option delete 'wplocalseo_cleaner_wpsupercache'
wp option delete 'wplocalseo_cleaner_wpfastestcache'
wp option delete 'wplocalseo_cleaner_cometcache'
wp option delete 'wplocalseo_cleaner_cacheenabler'
wp option delete 'wplocalseo_cleaner_rocket'
wp option delete 'wplocalseo_cleaner_notify'
wp option delete 'wplocalseo_cleaner_notificationsemail'

# Clear Cron Jobs
wp cron event delete 'wplocalseo_cleaner_clean_all_cache'

