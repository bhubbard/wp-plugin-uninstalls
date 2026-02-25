#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'osm_default_lat'
wp option delete 'osm_default_lon'
wp option delete 'osm_default_zoom'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_OSM_geo_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_OSM_geo_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_OSM_geo_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_OSM_geo_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'OSM_geo_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'OSM_geo_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'OSM_geo_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'OSM_geo_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'OSM_Marker_01_LatLon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'OSM_Marker_01_LatLon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'OSM_Marker_01_LatLon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'OSM_Marker_01_LatLon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'OSM_Marker_01_Icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'OSM_Marker_01_Icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'OSM_Marker_01_Icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'OSM_Marker_01_Icon'"
