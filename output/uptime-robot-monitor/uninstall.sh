#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'uptime_robot_nh_api'
wp option delete 'urpro_version'

# Clear Cron Jobs
wp cron event delete 'urpro_schedule_clear_cache'
wp cron event delete 'urpro_clear_cache'

