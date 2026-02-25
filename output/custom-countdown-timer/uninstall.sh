#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cctimer_settings'

# Delete Transients
wp transient delete 'cctimer_cache'

# Clear Cron Jobs
wp cron event delete 'cctimer_daily_cleanup'

