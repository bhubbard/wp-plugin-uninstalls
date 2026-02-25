#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gapiwp_token'

# Clear Cron Jobs
wp cron event delete 'wp_one_metric'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_one_metric'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_one_metric'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_one_metric'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_one_metric'"
