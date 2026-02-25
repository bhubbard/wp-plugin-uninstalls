#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_wpcar_maxtime_limit'
wp option delete '_wpcar_autotime_limit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcar_autotime_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcar_autotime_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcar_autotime_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcar_autotime_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcar_maxtime_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcar_maxtime_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcar_maxtime_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcar_maxtime_limit'"
