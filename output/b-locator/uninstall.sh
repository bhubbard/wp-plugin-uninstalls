#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'b_locator'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_location_long'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_location_long'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_location_long'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_location_long'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_location_lat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_location_lat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_location_lat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_location_lat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_location_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_location_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_location_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_location_details'"
