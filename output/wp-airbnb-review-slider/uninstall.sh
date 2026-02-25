#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpairbnb_airbnb_settings'
wp option delete 'wpairbnb_hidden_reviews'
wp option delete 'wpairbnb_options'
wp option delete 'wpfbr_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

# Clear Cron Jobs
wp cron event delete 'wpairbnb_daily_event'

