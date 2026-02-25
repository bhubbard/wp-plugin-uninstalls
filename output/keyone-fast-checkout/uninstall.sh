#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'k1fach_api_identifier'
wp option delete 'k1fach_enable_button'
wp option delete 'k1fach_jwt_duration'
wp option delete 'k1fach_button_alignment'
wp option delete 'k1fach_api_key'

# Clear Cron Jobs
wp cron event delete 'k1fach_daily_health_check'

