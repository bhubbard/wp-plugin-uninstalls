#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'glive_post_type_rules_flashed_14'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'race_folder_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'race_folder_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'race_folder_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'race_folder_meta'"
