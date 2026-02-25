#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wen_map_marker_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wen_map_marker_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wen_map_marker_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wen_map_marker_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wen_map_marker_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wen_map_marker_zoom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wen_map_marker_zoom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wen_map_marker_zoom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wen_map_marker_zoom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wen_map_marker_lat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wen_map_marker_lat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wen_map_marker_lat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wen_map_marker_lat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wen_map_marker_lng'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wen_map_marker_lng'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wen_map_marker_lng'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wen_map_marker_lng'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wen_map_marker_content_append'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wen_map_marker_content_append'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wen_map_marker_content_append'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wen_map_marker_content_append'"
