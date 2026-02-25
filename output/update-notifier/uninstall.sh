#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'updatenote_options'
wp option delete 'current_theme'

# Delete Transients
wp transient delete 'update_core'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'updatenotifier_sendmail'

