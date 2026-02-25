#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'WP_EX_FONTS_LIST'
wp option delete 'vcgstb_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cnrt_missing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cnrt_missing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cnrt_missing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cnrt_missing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitter'"
