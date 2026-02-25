#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpyelp_yelp_settings'
wp option delete 'wpyelp_hidden_reviews'
wp option delete 'wpyelp_options'
wp option delete 'wpfbr_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

# Clear Cron Jobs
wp cron event delete 'wpyelp_daily_event'

