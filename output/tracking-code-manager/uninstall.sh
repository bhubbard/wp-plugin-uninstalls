#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'TCM_HookPriority'

# Clear Cron Jobs
wp cron event delete 'tcmp_weekly_scheduled_events'
wp cron event delete 'tcmp_daily_scheduled_events'

