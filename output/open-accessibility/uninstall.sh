#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'open_accessibility_options'
wp option delete 'open_accessibility_db_version'

# Clear Cron Jobs
wp cron event delete 'open_accessibility_cleanup_data'

