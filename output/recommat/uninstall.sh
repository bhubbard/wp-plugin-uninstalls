#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'recommat_settings'
wp option delete 'activate-recommat'

# Clear Cron Jobs
wp cron event delete 'recommat_hourly_cron_hook'

