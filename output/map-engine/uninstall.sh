#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpvme_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'map_engine'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'map_engine'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'map_engine'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'map_engine'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'map_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'map_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'map_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'map_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'styles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'styles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'styles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'styles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'map_global_styles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'map_global_styles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'map_global_styles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'map_global_styles'"
