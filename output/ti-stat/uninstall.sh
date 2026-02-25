#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ti_stat'
wp option delete 'ti_stat_options'
wp option delete 'ti_yauth'
wp option delete 'ti_stat_widget'
wp option delete 'ti_stat_graph'
wp option delete 'ti_stat_cache'
wp option delete 'ti_reports'

# Clear Cron Jobs
wp cron event delete 'ti_stat_daily_event'

