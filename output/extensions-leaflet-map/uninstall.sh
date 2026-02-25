#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'leafext_awesome'
wp option delete 'leafext_deleting'
wp option delete 'leafext_eleparams'
wp option delete 'leafext_values'
wp option delete 'leafext_multieleparams'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'leafext_color_%'"
wp option delete 'leafext_sgpxparams'
wp option delete 'leafext_sgpx_unclean_db'
wp option delete 'leafext_waypoints'
wp option delete 'leafext_filemgr'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'leafext_file_listing_%'"
wp option delete 'leafext_gesture'
wp option delete 'leaflet_scroll_wheel_zoom'
wp option delete 'leafext_parentgroup'
wp option delete 'leafext_canvas'
wp option delete 'leafext_hover'
wp option delete 'leafext_cluster'
wp option delete 'leafext_placementparams'
wp option delete 'leafext_featuredmap'
wp option delete 'leafext_overviewmap'
wp option delete 'leaflet_mapid'
wp option delete 'leaflet_map_tile_url'
wp option delete 'leaflet_map_tile_url_subdomains'
wp option delete 'leaflet_default_attribution'
wp option delete 'leaflet_default_min_zoom'
wp option delete 'leaflet_default_max_zoom'
wp option delete 'leafext_maps'
wp option delete 'leafext_providers'
wp option delete 'leafext_zoomhome'
wp option delete 'active_sitewide_plugins'
wp option delete 'leaflet_default_width'
wp option delete 'leaflet_default_height'
wp option delete 'leaflet_default_zoom'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_leafext_ovm_%' OR option_name LIKE '_site_transient_leafext_ovm_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo_latitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo_latitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo_latitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo_latitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo_longitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo_longitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo_longitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo_longitude'"
