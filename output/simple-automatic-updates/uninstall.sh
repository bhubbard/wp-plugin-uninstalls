#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sau_updated_packages'
wp option delete 'sau_last_checked'
wp option delete 'sau_mode'

# Delete Transients
wp transient delete 'update_core'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'sau_check_updates'

