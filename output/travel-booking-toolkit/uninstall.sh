#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_travel_engine_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tbt-premium-addons-notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tbt-premium-addons-notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tbt-premium-addons-notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tbt-premium-addons-notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_travel_engine_setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_travel_engine_setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_travel_engine_setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_travel_engine_setting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'category-image-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'category-image-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'category-image-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'category-image-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'photo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'photo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'photo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'photo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stars'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stars'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stars'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stars'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gallery_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gallery_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gallery_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gallery_images'"
