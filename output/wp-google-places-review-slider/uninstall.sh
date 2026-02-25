#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpfbr_google_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_times_ran'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'wprevpro_yelp_settings'

# Clear Cron Jobs
wp cron event delete 'wpfbr_cron_google_review'

