#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'wt_backups_init_cron'
wp cron event delete 'wt_backups_init_cron_incremental'
wp cron event delete 'wt_backups_five_min_event'
wp cron event delete 'wt_backups_hourly_event'

