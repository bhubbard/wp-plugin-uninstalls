#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bbg_google_maps_lat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bbg_google_maps_lat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bbg_google_maps_lat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bbg_google_maps_lat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bbg_google_maps_lng'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bbg_google_maps_lng'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bbg_google_maps_lng'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bbg_google_maps_lng'"
