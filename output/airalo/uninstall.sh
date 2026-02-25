#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'airalo_settings'

# Clear Cron Jobs
wp cron event delete 'airalo_hourly_cron_hook'
wp cron event delete 'airalo_daily_cron_hook'

