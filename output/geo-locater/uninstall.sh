#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'locater_google_api_key'
wp option delete 'locater_map_zoom_size'
wp option delete 'locater_map_radius'
wp option delete 'locater_map_marker_img'
wp option delete 'locater_sub_title_text'

