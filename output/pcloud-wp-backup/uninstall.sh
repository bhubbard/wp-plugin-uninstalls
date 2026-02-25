#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'init_autobackup'
wp cron event delete 'wp2pcl_run_pcloud_backup_hook'

