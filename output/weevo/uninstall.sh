#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'weevosdd_access_token'
wp option delete 'weevosdd_username'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tracking_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tracking_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tracking_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tracking_info'"
