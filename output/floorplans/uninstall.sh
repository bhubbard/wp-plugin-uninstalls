#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fp_version'
wp option delete 'fp_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'floorplan_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'floorplan_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'floorplan_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'floorplan_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'floorplan_collection'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'floorplan_collection'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'floorplan_collection'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'floorplan_collection'"
