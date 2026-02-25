#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpmi_allowed_post_types'
wp option delete 'wpmi_map_type'
wp option delete 'wpmi_latitude'
wp option delete 'wpmi_longitude'
wp option delete 'wpmi_map_width'
wp option delete 'wpmi_map_width_type'
wp option delete 'wpmi_map_height'
wp option delete 'wpmi_map_height_type'
wp option delete 'wpmi_map_zoom'
wp option delete 'wpmi_map_marker'
wp option delete 'wpmi_map_position'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmi_map_latitiude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmi_map_latitiude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmi_map_latitiude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmi_map_latitiude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmi_map_longitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmi_map_longitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmi_map_longitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmi_map_longitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmi_map_zoom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmi_map_zoom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmi_map_zoom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmi_map_zoom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmi_map_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmi_map_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmi_map_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmi_map_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmi_map_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmi_map_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmi_map_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmi_map_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmi_marker_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmi_marker_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmi_marker_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmi_marker_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmi_marker_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmi_marker_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmi_marker_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmi_marker_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmi_marker_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmi_marker_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmi_marker_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmi_marker_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmi_marker_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmi_marker_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmi_marker_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmi_marker_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmi_multipin_map_latitiude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmi_multipin_map_latitiude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmi_multipin_map_latitiude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmi_multipin_map_latitiude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmi_multipin_map_longitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmi_multipin_map_longitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmi_multipin_map_longitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmi_multipin_map_longitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmi_multipin_map_zoom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmi_multipin_map_zoom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmi_multipin_map_zoom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmi_multipin_map_zoom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmi_multipin_map_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmi_multipin_map_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmi_multipin_map_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmi_multipin_map_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmi_multipin_map_marker_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmi_multipin_map_marker_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmi_multipin_map_marker_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmi_multipin_map_marker_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_mapit_pins'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_mapit_pins'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_mapit_pins'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_mapit_pins'"
