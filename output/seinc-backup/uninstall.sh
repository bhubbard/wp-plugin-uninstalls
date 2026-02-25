#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seinc_backup_folder_path'
wp option delete 'seinc_backup_schedule_enabled'
wp option delete 'seinc_backup_schedule_frequency'
wp option delete 'seinc_backup_schedule_time'
wp option delete 'seinc_backup_retention_days'
wp option delete 'seinc_backup_progress'

# Clear Cron Jobs
wp cron event delete 'seinc_backup_scheduled_event'

