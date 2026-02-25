#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpbiu_schedules'
wp option delete 'backupsavvy_db_version'
wp option delete 'backupsavvy_storage'
wp option delete 'backupsavvy_backup_settings'
wp option delete 'backupsavvy_apikey'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'backupsavvy_unique_%'"
wp option delete 'backupsavvy_premium_object'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'backupsavvy_unique_ftp%'"
wp option delete 'backupsavvy_license'

# Clear Cron Jobs
wp cron event delete 'backupsavvy_cron_job'
wp cron event delete 'creating_sites_backups'
wp cron event delete 'creating_sites_backup'

