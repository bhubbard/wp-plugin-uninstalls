#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dbse_migrated_storage'
wp option delete 'dbse_options'
wp option delete 'db_excel_sync_delete_data'
wp option delete 'db_excel_sync_options'

# Delete Transients
wp transient delete 'db_excel_sync_preview_data'

# Clear Cron Jobs
wp cron event delete 'dbse_cleanup_backups_event'

