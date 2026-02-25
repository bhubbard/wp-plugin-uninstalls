#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'um_gallery_version'
wp option delete 'um_options'
wp option delete 'um_gallery'
wp option delete 'um_gallery_pro_addons'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
