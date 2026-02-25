#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'us_debtclock_widget_info'

# Clear Cron Jobs
wp cron event delete 'us_debtclock_widget_event_hook'

