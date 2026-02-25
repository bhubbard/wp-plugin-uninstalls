#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'osm_cats_baselayer_osm'
wp option delete 'osm_cats_baselayer_google_roadmap'
wp option delete 'osm_cats_baselayer_google_satellite'
wp option delete 'osm_cats_baselayer_google_hybrid'
wp option delete 'osm_cats_baselayer_google_terrain'
wp option delete 'osm_cats_map_width'
wp option delete 'osm_cats_map_height'
wp option delete 'osm_cats_center_lon'
wp option delete 'osm_cats_center_lat'
wp option delete 'osm_cats_zoom_level'
wp option delete 'osm_cats_disable_zoom_wheel'
wp option delete 'osm_cats_include_cats'
wp option delete 'osm_cats_exclude_cats'
wp option delete 'osm_cats_marker_custom_field'
wp option delete 'osm_cats_marker_show_thumbnail'
wp option delete 'osm_cats_marker_show_excerpt'
wp option delete 'osm_cats_marker_images_path'

