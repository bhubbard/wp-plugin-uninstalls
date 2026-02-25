#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lmmvp_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lmmvp_last_modified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lmmvp_last_modified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lmmvp_last_modified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lmmvp_last_modified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lmmvp_modifications'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lmmvp_modifications'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lmmvp_modifications'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lmmvp_modifications'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lmmvp_manual_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lmmvp_manual_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lmmvp_manual_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lmmvp_manual_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lmmvp_last_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lmmvp_last_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lmmvp_last_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lmmvp_last_author'"
