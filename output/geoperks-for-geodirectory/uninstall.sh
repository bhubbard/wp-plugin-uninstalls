#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_perks_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_active'"
wp option delete 'exup_keys'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'wp_perks_weekly_scheduled_events'

