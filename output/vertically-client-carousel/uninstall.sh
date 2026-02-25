#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cbvcc_auto_slide'
wp option delete 'cbvcc_slide_speed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cbvcc_logo_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cbvcc_logo_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cbvcc_logo_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cbvcc_logo_url'"
