#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'speedy_econt_shipping_option_name'
wp option delete 'sesh_db_version'

# Delete Transients
wp transient delete 'sesh_upgrade_running'

# Clear Cron Jobs
wp cron event delete 'seshForceUpdateHook'
wp cron event delete 'seshDailyDbHook'
wp cron event delete 'seshEcontUpdateDbHook'
wp cron event delete 'seshSpeedyEcontUpdateDbHook'

