#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wuco_database_cleanup_done'
wp option delete 'wuco_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_schedule_types'"

# Clear Cron Jobs
wp cron event delete 'wuco_event_database_cleanup'

