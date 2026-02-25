#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpzillow_zillow_settings'
wp option delete 'wpzillow_hidden_reviews'
wp option delete 'wpzillow_options'
wp option delete 'wpfbr_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

# Clear Cron Jobs
wp cron event delete 'wpzillow_daily_event'

