#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'storm_clean_admin_version'
wp option delete 'storm_clean_admin_activated'
wp option delete 'storm_clean_admin_generals_options'

# Clear Cron Jobs
wp cron event delete 'wsca_check_inactive_users_cron'

