#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'web-tools-slug'
wp option delete 'web-tools-default-css'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'webtools_toolname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'webtools_toolname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'webtools_toolname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'webtools_toolname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'webtools_main_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'webtools_main_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'webtools_main_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'webtools_main_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'webtools_toolicon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'webtools_toolicon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'webtools_toolicon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'webtools_toolicon'"
