#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'polylang'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'description_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'description_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'description_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'description_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gallery'"
