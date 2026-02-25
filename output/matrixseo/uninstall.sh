#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mx_total_act'

# Clear Cron Jobs
wp cron event delete 'matrixseocronjob'
wp cron event delete 'matrixseostopwords'

