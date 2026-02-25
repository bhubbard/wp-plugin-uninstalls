#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'disw_debug'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_date_image_switcher_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_date_image_switcher_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_date_image_switcher_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_date_image_switcher_images'"
