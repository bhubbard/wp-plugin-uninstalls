#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easy_map_setting'
wp option delete 'easy_map_version'
wp option delete 'easy_map_marker_image_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'easy_map_marker_image_id_%'"

