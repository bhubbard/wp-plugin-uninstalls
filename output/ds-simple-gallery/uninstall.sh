#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wrsg_optionsframework'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wrsimplegallery_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wrsimplegallery_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wrsimplegallery_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wrsimplegallery_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wrsimplegallery_setcover'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wrsimplegallery_setcover'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wrsimplegallery_setcover'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wrsimplegallery_setcover'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
