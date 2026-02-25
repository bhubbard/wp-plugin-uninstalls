#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'recent_images_box_widget'
wp option delete 'smoothgallery_widget'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smoothgallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smoothgallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smoothgallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smoothgallery'"
