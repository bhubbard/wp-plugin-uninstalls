#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'IRP_HookPriority'

# Clear Cron Jobs
wp cron event delete 'irp_weekly_scheduled_events'
wp cron event delete 'irp_daily_scheduled_events'

