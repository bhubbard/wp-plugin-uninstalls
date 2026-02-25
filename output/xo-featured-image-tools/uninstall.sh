#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xo_featured_image_tools_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'disable_featured_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'disable_featured_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'disable_featured_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'disable_featured_image'"
