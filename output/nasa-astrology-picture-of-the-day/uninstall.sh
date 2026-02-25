#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'apod_api_key'
wp option delete 'apod_default_status'
wp option delete 'apod_post_as'

# Clear Cron Jobs
wp cron event delete 'nasa_potd_daily_event_hook'

