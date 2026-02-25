#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'media_selector_attachment_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'featured_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'featured_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'featured_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'featured_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'categoryfeaturedimage_exclude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'categoryfeaturedimage_exclude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'categoryfeaturedimage_exclude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'categoryfeaturedimage_exclude'"
