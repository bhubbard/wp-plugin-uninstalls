#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_ex_attr_staff'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_ex_attr_staff'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_ex_attr_staff'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_ex_attr_staff'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_mypage_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_mypage_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_mypage_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_mypage_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
