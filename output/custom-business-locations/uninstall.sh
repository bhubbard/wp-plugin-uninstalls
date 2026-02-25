#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cbl_plugin_version'
wp option delete 'cbl_plugin_options'
wp option delete 'cbl_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cbl_location_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cbl_location_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cbl_location_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cbl_location_data'"
