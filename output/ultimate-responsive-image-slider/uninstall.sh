#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'WRIS_Settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ris_all_photos_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ris_all_photos_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ris_all_photos_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ris_all_photos_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'WRIS_Gallery_Settings_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'WRIS_Gallery_Settings_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'WRIS_Gallery_Settings_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'WRIS_Gallery_Settings_%'"
