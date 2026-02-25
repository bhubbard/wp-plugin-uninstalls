#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpthumbtack_thumbtack_settings'
wp option delete 'wpthumbtack_hidden_reviews'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

# Clear Cron Jobs
wp cron event delete 'wpthumbtack_daily_event'

