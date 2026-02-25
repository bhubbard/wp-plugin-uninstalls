#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nwxrview_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nwxrview'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nwxrview'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nwxrview'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nwxrview'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nwxrview-position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nwxrview-position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nwxrview-position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nwxrview-position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nwx-rview-sum'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nwx-rview-sum'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nwx-rview-sum'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nwx-rview-sum'"
