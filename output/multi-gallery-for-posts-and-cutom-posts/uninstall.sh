#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'multi_gallery_for_posttypes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'multi_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'multi_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'multi_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'multi_image_gallery'"
