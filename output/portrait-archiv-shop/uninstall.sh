#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'PAWPS_DISPLAY_ROWS'
wp option delete 'PAWPS_DISPLAY_COLS'
wp option delete 'PAWPS_TEMPLATE_NAME'
wp option delete 'PAWPS_DEBUG'

# Clear Cron Jobs
wp cron event delete 'pawps_refresh_hook'

