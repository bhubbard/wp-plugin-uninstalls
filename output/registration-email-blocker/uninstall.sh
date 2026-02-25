#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'REGIEMBL_settings'
wp option delete 'REGIEMBL_version'

# Clear Cron Jobs
wp cron event delete 'REGIEMBL_daily_check'
wp cron event delete 'REGIEMBL_weekly_cleanup'
wp cron event delete 'REGIEMBL_monthly_report'

