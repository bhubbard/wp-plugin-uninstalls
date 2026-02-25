#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woonp_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woonp_%'"

# Delete Transients
wp transient delete 'wpclever_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woonp_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woonp_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woonp_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woonp_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woonp_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woonp_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woonp_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woonp_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woonp_min'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woonp_min'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woonp_min'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woonp_min'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woonp_max'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woonp_max'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woonp_max'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woonp_max'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woonp_step'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woonp_step'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woonp_step'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woonp_step'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woonp_values'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woonp_values'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woonp_values'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woonp_values'"
