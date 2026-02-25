#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'views_options'
wp option delete 'stats_display'
wp option delete 'stats_mostlimit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'views'"
