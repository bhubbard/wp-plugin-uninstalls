#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wbz404_settings'

# Clear Cron Jobs
wp cron event delete 'wbz404_cleanupCronAction'
wp cron event delete 'wbz404_duplicateCronAction'

