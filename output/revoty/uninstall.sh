#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'revoty_enabled_modules'
wp option delete 'revoty_photo-reviews_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'revoty_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'revoty_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'revoty_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'revoty_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
