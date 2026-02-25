#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'llmsaiwcc_settings'

# Clear Cron Jobs
wp cron event delete 'llmsaiwcc_daily_event'
wp cron event delete 'llmsaiwcc_weekly_event'

