#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_db_backup_excs'
wp option delete 'wpdb_backup_recip'
wp option delete 'wp_cron_backup_schedule'
wp option delete 'wp_cron_backup_tables'
wp option delete 'wp_cron_backup_recipient'
wp option delete 'wp_cron_daily_lastrun'

# Clear Cron Jobs
wp cron event delete 'wp_db_backup_cron'

