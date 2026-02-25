#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'map_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'map_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'map_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'map_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'map_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'map_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'map_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'map_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'marker_latitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'marker_latitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'marker_latitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'marker_latitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'marker_longitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'marker_longitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'marker_longitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'marker_longitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'marker_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'marker_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'marker_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'marker_icon'"
