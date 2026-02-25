#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rx_weatherbot_settings'
wp option delete 'rx_weatherbot_options'

# Clear Cron Jobs
wp cron event delete 'rx_weatherbot_refresh_weather'

