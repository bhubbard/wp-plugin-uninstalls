#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'embed_osm_width'
wp option delete 'embed_osm_height'
wp option delete 'embed_osm_layer'
wp option delete 'embed_osm_lat'
wp option delete 'embed_osm_lon'
wp option delete 'embed_osm_zoom'
wp option delete 'embed_osm_marker'
wp option delete 'embed_osm_link'

