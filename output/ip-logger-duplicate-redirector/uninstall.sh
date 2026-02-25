#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'silr_db_version'
wp option delete 'silr_exclude_admins'
wp option delete 'silr_enable_redirect'
wp option delete 'silr_redirect_url'
wp option delete 'silr_retention_hours'
wp option delete 'silr_logs_per_page'

# Clear Cron Jobs
wp cron event delete 'silr_cleanup_event'

