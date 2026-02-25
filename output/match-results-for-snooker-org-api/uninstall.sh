#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mrfs_snooker_org_api_key'
wp option delete 'mrfs_snooker_org_show_powered_by'

# Clear Cron Jobs
wp cron event delete 'snooker_org_cron_event_10_minutes'
wp cron event delete 'snooker_weekly_cron_event'

