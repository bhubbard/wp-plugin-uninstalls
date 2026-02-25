#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'osm_default_lat'
wp option delete 'osm_default_lon'
wp option delete 'osm_default_zoom'
wp option delete 'osm_custom_field'
wp option delete 'osm_zoom_level'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'OSM_geo_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'OSM_geo_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'OSM_geo_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'OSM_geo_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_Name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_Name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_Name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_Name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_LatLon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_LatLon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_LatLon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_LatLon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_Icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_Icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_Icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_Icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_Text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_Text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_Text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_Text'"
