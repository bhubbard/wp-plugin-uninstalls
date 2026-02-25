#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'p404_redirect_options'
wp option delete 'P404_email_update'
wp option delete 'p404_migration_status2'
wp option delete 'P404REDIRECT_upgrade_msg'
wp option delete 'P404_alert_msg'

# Clear Cron Jobs
wp cron event delete 'p404_daily_email_summary'
wp cron event delete 'p404_weekly_email_summary'
wp cron event delete 'p404_monthly_email_summary'
wp cron event delete 'p404_send_scheduled_email'

