#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'travel_maps_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'markers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'markers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'markers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'markers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'travel_maps_meta_center_lat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'travel_maps_meta_center_lat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'travel_maps_meta_center_lat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'travel_maps_meta_center_lat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'travel_maps_meta_center_lng'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'travel_maps_meta_center_lng'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'travel_maps_meta_center_lng'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'travel_maps_meta_center_lng'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'travel_maps_meta_center_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'travel_maps_meta_center_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'travel_maps_meta_center_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'travel_maps_meta_center_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'travel_maps_meta_zoom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'travel_maps_meta_zoom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'travel_maps_meta_zoom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'travel_maps_meta_zoom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'travel_maps_meta_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'travel_maps_meta_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'travel_maps_meta_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'travel_maps_meta_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'travel_maps_meta_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'travel_maps_meta_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'travel_maps_meta_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'travel_maps_meta_width'"
