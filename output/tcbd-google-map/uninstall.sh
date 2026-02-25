#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tcbd_google_map_latitude'
wp option delete 'tcbd_google_map_longitude'
wp option delete 'tcbd_google_map_zoom'
wp option delete 'tcbd_google_map_marker'
wp option delete 'tcbd_google_map_style'
wp option delete 'tcbd_google_map_scroll_zoom'
wp option delete 'tcbd_google_map_api_key'

