#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'update_core'

# Clear Cron Jobs
wp cron event delete 'wpu_my_daily_event'
wp cron event delete 'my_daily_event'

