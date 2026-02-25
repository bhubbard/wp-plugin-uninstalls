#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'osm-tiles-proxy-rest-api-enabled'
wp option delete 'osm-tiles-proxy-cache-enabled'
wp option delete 'osm-tiles-proxy-osm-url'
wp option delete 'osm_tiles_proxy_out_of_range_image_url'
wp option delete 'osm_tiles_proxy_min_zoom'
wp option delete 'osm_tiles_proxy_max_zoom'
wp option delete 'osm_tiles_proxy_min_x'
wp option delete 'osm_tiles_proxy_max_x'
wp option delete 'osm_tiles_proxy_min_y'
wp option delete 'osm_tiles_proxy_max_y'

