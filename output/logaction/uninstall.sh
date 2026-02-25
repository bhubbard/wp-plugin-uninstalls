#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'logaction_enable_logs_deletion'
wp option delete 'logaction_delete_logs_after_days'
wp option delete 'logaction_enable_logs_export'
wp option delete 'logaction_settings'

# Clear Cron Jobs
wp cron event delete 'delete_logs_older_than_30_days_cron'

