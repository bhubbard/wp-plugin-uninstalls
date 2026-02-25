#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nandresmon_options'

# Clear Cron Jobs
wp cron event delete 'nandresmon_daily_cleanup'
wp cron event delete 'nandresmon_send_report'

