#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mab_clear_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'mab_profile_bio_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'mab_profile_bio_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'mab_profile_bio_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mab_profile_bio_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mab_profile_bio%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mab_profile_bio%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mab_profile_bio%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mab_profile_bio%'"
