#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'revenueflex_settings%'"
wp option delete 'revenueflex_settings_startPage'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'revenueflex_settings_%'"
wp option delete 'revenueflex_api'

# Clear Cron Jobs
wp cron event delete 'rf_cron_hourly'

