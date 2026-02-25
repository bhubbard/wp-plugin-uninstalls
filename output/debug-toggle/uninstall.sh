#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'debug_toggle_monitoring_interval'
wp option delete 'debug_toggle_monitoring'
wp option delete 'debug_toggle_admin_bar'
wp option delete 'debug_toggle_remove_data_on_uninstall'

# Clear Cron Jobs
wp cron event delete 'debug_toggle_scheduled_monitoring'

