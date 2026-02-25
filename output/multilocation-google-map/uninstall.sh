#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mgm_map_key_options'
wp option delete 'mgm_map_lat_options'
wp option delete 'mgm_map_lng_options'
wp option delete 'mgm_map_zoom_options'
wp option delete 'mgm_map_type_options'
wp option delete 'mgm_map_scrollwheel_options'
wp option delete 'mgm_map_draggable_options'
wp option delete 'mgm_map_zoomcontrol_options'
wp option delete 'mgm_map_marker_click_zoom_options'
wp option delete 'mgm_upload_pointer_image_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'latitude_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'latitude_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'latitude_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'latitude_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'longitude_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'longitude_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'longitude_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'longitude_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description_id'"
