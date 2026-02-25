#!/bin/bash
# WP-CLI Uninstall Script

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
