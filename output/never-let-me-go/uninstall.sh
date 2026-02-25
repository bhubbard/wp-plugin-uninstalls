#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_option'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nlmg_leave_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nlmg_leave_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nlmg_leave_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nlmg_leave_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_level'"
