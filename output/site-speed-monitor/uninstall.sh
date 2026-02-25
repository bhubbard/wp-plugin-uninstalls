#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'site_speed_monitor_options'

# Delete Transients
wp transient delete 'site_speed_monitor_stripped_parameters'

# Clear Cron Jobs
wp cron event delete 'delayed_speed_test_run'
wp cron event delete 'speed_test_run'

