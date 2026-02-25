#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aurora_heatmap_option'
wp option delete 'Activated_Plugin'

# Clear Cron Jobs
wp cron event delete 'aurora_heatmap_cron_daily'

