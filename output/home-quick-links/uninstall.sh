#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'armd_ql_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'armd_ql_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'armd_ql_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'armd_ql_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'armd_ql_target_blank'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'armd_ql_target_blank'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'armd_ql_target_blank'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'armd_ql_target_blank'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'armd_ql_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'armd_ql_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'armd_ql_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'armd_ql_end_date'"
