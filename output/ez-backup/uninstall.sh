#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ez-backup-settings'
wp option delete 'ELISQLREPORTS_settings_array'
wp option delete 'ELISQLREPORTS_BACKUP_DB'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'ELISQLREPORTS_daily_backup'
wp cron event delete 'ELISQLREPORTS_hourly_backup'
wp cron event delete 'ezbackup_db_daily'
wp cron event delete 'ezbackup_db_hourly'

