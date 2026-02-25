#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'preload_images_option_name'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'preload_image_urls'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'preload_image_urls'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'preload_image_urls'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'preload_image_urls'"
