#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'freeworldhtml5map_options'
wp option delete 'freeworldhtml5map_goptions'
wp option delete 'freeworldhtml5map_imported_map_key'
wp option delete 'freeworldcontinenthtml5map_map_data'
wp option delete 'freeworldcontinenthtml5map_nameColor'
wp option delete 'freeworldcontinenthtml5map_nameFontSize'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'freeworldcontinenthtml5map_state_info_%'"

