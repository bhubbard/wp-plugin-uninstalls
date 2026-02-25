#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%keywords'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%description'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%use_global_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%use_global_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%use_global_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%use_global_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%meta_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%meta_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%meta_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%meta_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%meta_description'"
