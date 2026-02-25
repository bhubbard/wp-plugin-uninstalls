#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcgmp_gmaps_api'
wp option delete 'wpcgmp_ipinfodb_api'
wp option delete 'wpcgmp_marker'
wp option delete 'wpcgmp_count_marker'
wp option delete 'wpcgmp_zoom'
wp option delete 'wpcgmp_coord_lat'
wp option delete 'wpcgmp_coord_lon'
wp option delete 'wpcgmp_map_display'
wp option delete 'wpcgmp_no_comment_text'
wp option delete 'wpcgmp_map_width'
wp option delete 'wpcgmp_map_height'
wp option delete 'post_category'

