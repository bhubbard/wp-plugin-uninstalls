#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mobile_links_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mobile_links_meta_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mobile_links_meta_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mobile_links_meta_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mobile_links_meta_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mobile_links_custom_photo_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mobile_links_custom_photo_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mobile_links_custom_photo_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mobile_links_custom_photo_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mobile_links_custom_photo_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mobile_links_custom_photo_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mobile_links_custom_photo_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mobile_links_custom_photo_id'"
