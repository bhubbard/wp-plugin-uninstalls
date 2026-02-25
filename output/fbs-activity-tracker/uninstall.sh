#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fbsat_retention_days'
wp option delete 'fbsat_auto_cleanup'
wp option delete 'fbsat_db_version'

# Clear Cron Jobs
wp cron event delete 'fbsat_cleanup_logs'

