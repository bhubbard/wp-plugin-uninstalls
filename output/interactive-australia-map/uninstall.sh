#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'freeaustraliahtml5map_options'
wp option delete 'freeaustraliahtml5map_goptions'
wp option delete 'freeaustraliahtml5map_imported_map_key'
wp option delete 'freefreeaustraliahtml5map_map_data'
wp option delete 'freefreeaustraliahtml5map_nameColor'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'freefreeaustraliahtml5map_state_info_%'"
wp option delete 'freefreeaustraliahtml5map_nameFontSize'

