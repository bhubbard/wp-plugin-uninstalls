#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wnp_nearbyplaces_api_key'
wp option delete 'nearbyplaces_base_latitude'
wp option delete 'nearbyplaces_base_longitude'
wp option delete 'nearbyplaces_base_location_name'
wp option delete 'nearbyplaces_base_radius'
wp option delete 'nearbyplaces_base_latitude2'
wp option delete 'nearbyplaces_base_longitude2'
wp option delete 'nearbyplaces_base_location_name2'
wp option delete 'nearbyplaces_base_latitude3'
wp option delete 'nearbyplaces_base_longitude3'
wp option delete 'nearbyplaces_base_location_name3'
wp option delete 'nearbyplaces_base_location_marker_icon'
wp option delete 'nearbyplaces_base_location_marker_icon2'
wp option delete 'nearbyplaces_base_location_marker_icon3'
wp option delete 'my-acf-notice-dismissed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'apikey'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'apikey'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'apikey'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'apikey'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'latitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'latitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'latitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'latitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'longitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'longitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'longitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'longitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'loc_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'loc_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'loc_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'loc_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'radius'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'radius'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'radius'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'radius'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'latitude2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'latitude2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'latitude2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'latitude2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'longitude2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'longitude2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'longitude2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'longitude2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'loc_name2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'loc_name2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'loc_name2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'loc_name2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'latitude3'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'latitude3'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'latitude3'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'latitude3'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'longitude3'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'longitude3'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'longitude3'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'longitude3'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'loc_name3'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'loc_name3'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'loc_name3'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'loc_name3'"
