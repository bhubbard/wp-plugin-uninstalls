#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'freefreebangladeshhtml5map_nameFontSize'
wp option delete 'freefreebangladeshhtml5map_nameColor'
wp option delete 'freefreebangladeshhtml5map_map_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'freefreebangladeshhtml5map_state_info_%'"

