#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ELISQLREPORTS_reports_array'
wp option delete 'ELISQLREPORTS_settings_array'
wp option delete 'ELISQLREPORTS_BACKUP_DB'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ELISQLREPORTS_cache_%'"

# Clear Cron Jobs
wp cron event delete 'ELISQLREPORTS_hourly_backup'
wp cron event delete 'ELISQLREPORTS_daily_backup'

