#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_plugin'"
wp option delete 'thematic_maps_options'
wp option delete 'thematic_maps_plugin'

