#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plugin_update_notifier_email'
wp option delete 'plugin_update_notifier_interval'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete 'update_core'

# Clear Cron Jobs
wp cron event delete 'plugin_update_notifier_daily_check'

