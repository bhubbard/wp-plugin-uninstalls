#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'whab_settings'
wp option delete 'whab_location_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'whab_location_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'whab_location_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'whab_location_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'whab_location_data'"
