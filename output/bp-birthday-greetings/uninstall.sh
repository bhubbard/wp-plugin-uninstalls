#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bp-dob'
wp option delete 'bp-dp-width'
wp option delete 'bp-dp-height'
wp option delete 'bp-dp-type'

# Clear Cron Jobs
wp cron event delete 'bp_birthday_daily_event'

