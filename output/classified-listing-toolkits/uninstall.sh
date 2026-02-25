#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rtcl_installed_from'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_views'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rtcl_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rtcl_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rtcl_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rtcl_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rtcl_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rtcl_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rtcl_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rtcl_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtcl_favourites'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtcl_favourites'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtcl_favourites'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtcl_favourites'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rtcl_pp_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rtcl_pp_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rtcl_pp_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rtcl_pp_id'"
