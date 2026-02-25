#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pulsemaps_options'
wp option delete 'pulsemaps_widget'

# Clear Cron Jobs
wp cron event delete 'pulsemaps_daily'

