#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'threecal_settings'
wp option delete 'threecal_db_version'

# Delete Transients
wp transient delete 'threecal_activated'

# Clear Cron Jobs
wp cron event delete 'threecal_daily_notifications'
wp cron event delete 'threecal_cleanup_expired'

