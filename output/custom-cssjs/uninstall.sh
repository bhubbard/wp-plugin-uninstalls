#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_biw_custom_%'"
wp option delete '_biw_custom_css'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_biw_custom_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_biw_custom_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_biw_custom_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_biw_custom_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_biw_custom_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_biw_custom_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_biw_custom_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_biw_custom_css'"
