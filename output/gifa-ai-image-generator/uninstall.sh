#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wbstgif_openapi_key'
wp option delete 'wbstgif_dim__width'
wp option delete 'wbstgif_dim__height'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
