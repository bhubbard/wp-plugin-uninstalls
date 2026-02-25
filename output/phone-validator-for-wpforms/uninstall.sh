#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpfpv_settings'

# Clear Cron Jobs
wp cron event delete 'wpfpv_daily_cleanup'

