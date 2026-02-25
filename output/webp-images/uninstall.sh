#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webp_images_compatibility_notice'
wp option delete 'webp-images-pro_license_key'
wp option delete 'webp-images-pro_last_license_check'
wp option delete 'webp_images_quality'
wp option delete 'webp_images_auto_convert'
wp option delete 'webp_images_version'
wp option delete 'webp_images_installation_time'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'webp_src'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'webp_src'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'webp_src'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'webp_src'"
