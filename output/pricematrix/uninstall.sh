#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'pricematrix_daily_cleanup'
wp cron event delete 'pricematrix_weekly_maintenance'

