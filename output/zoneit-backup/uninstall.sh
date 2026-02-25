#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zoneit_cron_backup'

# Delete Transients
wp transient delete 'zoneit_cloud_id'
wp transient delete 'zoneit_restore_backup_running'

# Clear Cron Jobs
wp cron event delete 'zoneit_create_user_backup_event'
wp cron event delete 'zoneit_create_backup_event'
wp cron event delete 'zoneit_restore_backup_event'

