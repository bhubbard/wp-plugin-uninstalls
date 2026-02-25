#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ContentScheduler_Options'

# Clear Cron Jobs
wp cron event delete 'contentscheduler'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cs-enable-schedule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cs-enable-schedule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cs-enable-schedule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cs-enable-schedule'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cs-expire-date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cs-expire-date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cs-expire-date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cs-expire-date'"
