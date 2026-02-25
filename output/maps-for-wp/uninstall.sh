#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mfwp_version'
wp option delete 'mfwp_map_from'
wp option delete 'mfwp_gapikey'
wp option delete 'mfwp_type_map'
wp option delete 'mfwp_style_map'
wp option delete 'mfwp_h'
wp option delete 'mfwp_zoom_OnePoint'
wp option delete 'mfwp_zoom_ManyPoints'
wp option delete 'mfwp_default_point_img'
wp option delete 'mfwp_point_img'
wp option delete 'mfwp_center_lat_ManyPoints'
wp option delete 'mfwp_center_lon_ManyPoints'

