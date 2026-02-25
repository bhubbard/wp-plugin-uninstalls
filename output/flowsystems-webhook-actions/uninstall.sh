#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fswa_db_version'
wp option delete 'fswa_log_retention_days'
wp option delete 'fswa_archive_logs'
wp option delete 'fswa_archived_stats'

# Delete Transients
wp transient delete 'fswa_migration_notice'

# Clear Cron Jobs
wp cron event delete 'fswa_cleanup_logs'
wp cron event delete 'fswa_process_queue'

