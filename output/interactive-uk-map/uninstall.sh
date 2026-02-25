#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'freeukregionshtml5map_options'
wp option delete 'freeukregionshtml5map_goptions'
wp option delete 'freeukregionshtml5map_imported_map_key'
wp option delete 'freefreeukhtml5map_map_data'
wp option delete 'freefreeukhtml5map_nameColor'
wp option delete 'freefreeukhtml5map_nameFontSize'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'freefreeukhtml5map_state_info_%'"

