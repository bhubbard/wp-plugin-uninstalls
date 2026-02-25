#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'drag_n_drop_disable_auto_delete'
wp option delete 'dndmfu_settings'

# Clear Cron Jobs
wp cron event delete 'dnd_cf7_daily_event'

