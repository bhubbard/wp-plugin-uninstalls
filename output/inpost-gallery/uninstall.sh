#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'inpost_gallery_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'inpost_gallery_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'inpost_gallery_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'inpost_gallery_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'inpost_gallery_data'"
