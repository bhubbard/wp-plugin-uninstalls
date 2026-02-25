#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kcseo_wp_schema_settings'
wp option delete 'kcseo_bf_2022'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kcseo_ative_tab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kcseo_ative_tab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kcseo_ative_tab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kcseo_ative_tab'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_schema_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_schema_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_schema_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_schema_%'"
