#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_wcspc_license_notices_hide'
wp option delete 'activate-variation-swatches-style'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image'"
