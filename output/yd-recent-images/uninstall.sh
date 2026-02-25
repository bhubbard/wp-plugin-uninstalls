#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'yd_hourly_event'
wp cron event delete 'yd_daily_event'

