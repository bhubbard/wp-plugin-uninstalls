#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'postie-settings'

# Clear Cron Jobs
wp cron event delete 'check_postie_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image'"
