#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dbmanager_options'

# Clear Cron Jobs
wp cron event delete 'dbmanager_cron_backup'
wp cron event delete 'dbmanager_cron_optimize'
wp cron event delete 'dbmanager_cron_repair'

