#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ezgmaps_settings'
wp option delete 'ezgmaps_settings_plugin_activated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ezgmaps_meta_value_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ezgmaps_meta_value_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ezgmaps_meta_value_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ezgmaps_meta_value_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ezgmaps_Address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ezgmaps_Address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ezgmaps_Address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ezgmaps_Address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ezgmaps_Zipcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ezgmaps_Zipcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ezgmaps_Zipcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ezgmaps_Zipcode'"
