#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ochregeo_rgeocode'
wp option delete 'ochregeo_opmode'
wp option delete 'ochregeo_globalactionjs'
wp option delete 'ochregeo_useypf'
wp option delete 'ochregeo_ypfappid'
wp option delete 'ochregeo_lastgeocodergc'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ochregeo_action'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ochregeo_action'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ochregeo_action'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ochregeo_action'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ochregeo_actionp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ochregeo_actionp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ochregeo_actionp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ochregeo_actionp'"
