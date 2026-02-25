#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'googlemapapi_key'
wp option delete 'wittymap_loc'
wp option delete 'wittymap_def_zoom'
wp option delete 'wittymap_marker'
wp option delete 'wittymap_draggable'
wp option delete 'wittymap_doubleClickZoom'
wp option delete 'wittymap_zoomControl'
wp option delete 'wittymap_scrollWheel'
wp option delete 'wittymap_streetView'
wp option delete 'wittymap_markerLabel'
wp option delete 'wittymap_labelX'
wp option delete 'wittymap_labelY'

