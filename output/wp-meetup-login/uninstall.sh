#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_basic_options'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_access_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_access_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_access_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_access_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_profile_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_profile_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_profile_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_profile_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_profile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_profile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_profile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_profile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_user_profile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_user_profile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_user_profile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_user_profile'"
