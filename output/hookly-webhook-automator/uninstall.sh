#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hookly_version'
wp option delete 'hookly_db_version'
wp option delete 'hookly_enable_async'
wp option delete 'hookly_log_retention_days'
wp option delete 'hookly_default_timeout'

# Delete Transients
wp transient delete 'hookly_admin_notices'

# Clear Cron Jobs
wp cron event delete 'hookly_cleanup_logs'
wp cron event delete 'hookly_dispatch_webhook'
wp cron event delete 'hookly_retry_webhook'

