#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'google_map_api_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sgm-marker-lat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sgm-marker-lat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sgm-marker-lat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sgm-marker-lat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sgm-marker-lng'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sgm-marker-lng'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sgm-marker-lng'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sgm-marker-lng'"
