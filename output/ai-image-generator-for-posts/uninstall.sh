#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aigfp_api_key'
wp option delete 'aigfp_selected_cpts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_temp_aigfp_featured_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_temp_aigfp_featured_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_temp_aigfp_featured_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_temp_aigfp_featured_image'"
