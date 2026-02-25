#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'all-images-api-key'
wp option delete 'all-images-ai-settings'

# Delete Transients
wp transient delete 'all-images-ai-tmp-msg'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'allimages_auto_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'allimages_auto_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'allimages_auto_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'allimages_auto_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'all_images_page_all_images_ai_generations_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'all_images_page_all_images_ai_generations_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'all_images_page_all_images_ai_generations_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'all_images_page_all_images_ai_generations_per_page'"
