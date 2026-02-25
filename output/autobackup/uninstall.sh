#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auto_backup_cloud_storage'
wp option delete 'auto_backup_last_restore'
wp option delete 'auto_backup_sheduled_settings'

# Delete Transients
wp transient delete 'auto_backup_storage_type'
wp transient delete 'auto_backup_drp_app_key'
wp transient delete 'auto_backup_drp_app_secret'
wp transient delete 'auto_backup_gdrive_client_id'
wp transient delete 'auto_backup_gdrive_client_secret'

# Clear Cron Jobs
wp cron event delete 'auto_backup_sheduled_databaase_hook'
wp cron event delete 'auto_backup_sheduled_files_hook'

