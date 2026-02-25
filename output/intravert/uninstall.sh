#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wap_options'
wp option delete 'user_ads_blocks'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"

# Clear Cron Jobs
wp cron event delete 'waa_hourly_event'
wp cron event delete 'my_hourly_event'

