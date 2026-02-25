#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'diggr_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"

# Clear Cron Jobs
wp cron event delete 'diggr_checkForReviews'

