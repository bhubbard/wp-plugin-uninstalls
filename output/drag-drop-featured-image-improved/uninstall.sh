#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'drag-drop-post-types'
wp option delete 'drag-drop-file-types'
wp option delete 'drag-drop-user-capability'
wp option delete 'drag-drop-page-reload'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
