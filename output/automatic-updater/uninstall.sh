#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'automatic-updater'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'auto_updater_svn_event'

