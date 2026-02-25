#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'social_shares'

# Clear Cron Jobs
wp cron event delete 'social_shares'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shares'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shares'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shares'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shares'"
