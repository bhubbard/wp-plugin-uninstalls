#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'FLASHFOLDERS_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'menu_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'menu_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'menu_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'menu_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_flashfolder_file_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_flashfolder_file_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_flashfolder_file_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_flashfolder_file_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mm_usage_cache'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mm_usage_cache'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mm_usage_cache'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mm_usage_cache'"
