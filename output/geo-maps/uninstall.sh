#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'geo_maps_version'
wp option delete 'geo_maps_first_install_time'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo_maps_meta_active_tab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo_maps_meta_active_tab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo_maps_meta_active_tab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo_maps_meta_active_tab'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo_maps_markers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo_maps_markers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo_maps_markers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo_maps_markers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo_maps_map_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo_maps_map_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo_maps_map_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo_maps_map_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo_maps_marker_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo_maps_marker_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo_maps_marker_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo_maps_marker_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo_maps_map_scroll_wheel_zoom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo_maps_map_scroll_wheel_zoom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo_maps_map_scroll_wheel_zoom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo_maps_map_scroll_wheel_zoom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo_maps_map_draw_marker_line'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo_maps_map_draw_marker_line'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo_maps_map_draw_marker_line'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo_maps_map_draw_marker_line'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo_maps_popup_show_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo_maps_popup_show_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo_maps_popup_show_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo_maps_popup_show_on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo_maps_map_control_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo_maps_map_control_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo_maps_map_control_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo_maps_map_control_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo_maps_osm_map_provider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo_maps_osm_map_provider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo_maps_osm_map_provider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo_maps_osm_map_provider'"
