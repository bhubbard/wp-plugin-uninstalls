#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'businessdirectory_admin_notices'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'businessdirectory_installing'

# Clear Cron Jobs
wp cron event delete 'businessdirectory_daily_event'

