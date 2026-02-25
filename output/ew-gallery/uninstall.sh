#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ew_gallery_setting'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_related_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_related_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_related_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_related_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ew-gallery-images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ew-gallery-images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ew-gallery-images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ew-gallery-images'"
