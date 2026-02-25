#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nhrotm_auto_cleanup_enabled'
wp option delete 'nhrotm_history_retention_days'

# Clear Cron Jobs
wp cron event delete 'nhrotm_daily_cleanup'
wp cron event delete 'nhrotm_daily_history_prune'

