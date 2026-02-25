#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'freeusregionshtml5map_options'
wp option delete 'freeusregionshtml5map_goptions'
wp option delete 'freeusregionshtml5map_imported_map_key'
wp option delete 'freeusahtml5map_map_data'
wp option delete 'freeusahtml5map_nameColor'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'freeusahtml5map_state_info_%'"
wp option delete 'freeusahtml5map_nameFontSize'

