#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'moexrate_%'"

# Clear Cron Jobs
wp cron event delete 'moexrate_hourly_event'

