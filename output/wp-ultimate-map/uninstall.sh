#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpgl_zoom_level'
wp option delete 'focus_point'
wp option delete 'wpgl_sel_routes'
wp option delete 'wpgl_sel_places'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_term_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'place_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'place_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'place_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'place_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'places_with_routes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'places_with_routes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'places_with_routes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'places_with_routes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'route_coordinate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'route_coordinate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'route_coordinate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'route_coordinate'"
