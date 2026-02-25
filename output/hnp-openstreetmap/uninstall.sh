#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hnp_openmaps_map_address'
wp option delete 'hnp_openmaps_map_name'
wp option delete 'hnp_openmaps_map_zoom'
wp option delete 'hnp_openmaps_map_style'
wp option delete 'hnp_openmaps_map_height'
wp option delete 'hnp_openmaps_map_width'

