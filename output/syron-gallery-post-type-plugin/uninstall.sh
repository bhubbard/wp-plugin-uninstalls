#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sg_post_types'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'syron_gallery_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'syron_gallery_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'syron_gallery_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'syron_gallery_images'"
