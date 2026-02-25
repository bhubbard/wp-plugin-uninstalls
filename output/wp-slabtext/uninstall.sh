#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpstxt_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'use_wpstxt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'use_wpstxt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'use_wpstxt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'use_wpstxt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'divide_dpipe'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'divide_dpipe'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'divide_dpipe'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'divide_dpipe'"
