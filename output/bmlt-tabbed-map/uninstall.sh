#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_zoom_position'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_lat_position'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_lng_position'"

