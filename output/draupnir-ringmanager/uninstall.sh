#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'draupnir_%'"
wp option delete 'plugin_draupnir_settings'

# Clear Cron Jobs
wp cron event delete 'draupnir_hourly_event_hook'
wp cron event delete 'draupnir_scheduled_event_hook'

