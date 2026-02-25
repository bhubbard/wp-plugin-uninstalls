#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'snitch'

# Clear Cron Jobs
wp cron event delete 'snitch_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_snitch_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_snitch_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_snitch_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_snitch_%'"
