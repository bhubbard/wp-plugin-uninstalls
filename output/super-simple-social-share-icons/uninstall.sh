#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sssi_options'

# Delete Transients
wp transient delete 'sssi_style_cache'

# Clear Cron Jobs
wp cron event delete 'sssi_daily_cleanup'

