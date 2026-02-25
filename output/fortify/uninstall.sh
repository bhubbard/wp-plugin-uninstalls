#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fortify_settings'
wp option delete 'fortify_stats'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fortify_info_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fortify_info_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fortify_info_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fortify_info_visibility'"
