#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'image_so_position'
wp option delete 'image_so_source_text'
wp option delete 'image_so_only_post'
wp option delete 'image_so_nofollow'
wp option delete 'image_so_version_number'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'image_so_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image_so_source_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image_so_source_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image_so_source_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image_so_source_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image_so_source_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image_so_source_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image_so_source_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image_so_source_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image_so_source_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image_so_source_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image_so_source_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image_so_source_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image_so_nofollow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image_so_nofollow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image_so_nofollow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image_so_nofollow'"
