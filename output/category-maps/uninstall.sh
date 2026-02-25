#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'catmaps_options'
wp option delete 'catmaps_license'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'catmaps_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'catmaps_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'catmaps_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'catmaps_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'catmaps_latitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'catmaps_latitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'catmaps_latitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'catmaps_latitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'catmaps_longitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'catmaps_longitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'catmaps_longitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'catmaps_longitude'"
