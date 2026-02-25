#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'GPV_Default_Setting'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'GPV_photos_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'GPV_photos_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'GPV_photos_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'GPV_photos_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'GPV_images_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'GPV_images_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'GPV_images_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'GPV_images_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'GPV_custom_setting_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'GPV_custom_setting_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'GPV_custom_setting_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'GPV_custom_setting_%'"
