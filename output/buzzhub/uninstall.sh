#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'buzzhub_display_settings'
wp option delete 'buzzhub_version'

# Clear Cron Jobs
wp cron event delete 'buzzhub_cleanup_temp_files'

