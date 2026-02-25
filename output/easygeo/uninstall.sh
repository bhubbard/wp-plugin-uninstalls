#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easygeo_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easygeo_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easygeo_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easygeo_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easygeo_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easygeo_latitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easygeo_latitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easygeo_latitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easygeo_latitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easygeo_longitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easygeo_longitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easygeo_longitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easygeo_longitude'"
