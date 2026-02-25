#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsbg_optionsframework'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpstoryboardgalleries_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpstoryboardgalleries_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpstoryboardgalleries_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpstoryboardgalleries_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpstoryboardgalleries_auto_open'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpstoryboardgalleries_auto_open'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpstoryboardgalleries_auto_open'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpstoryboardgalleries_auto_open'"
