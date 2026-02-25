#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'prth_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_su_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_su_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_su_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_su_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_su_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_su_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_su_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_su_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_su_og_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_su_og_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_su_og_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_su_og_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_su_og_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_su_og_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_su_og_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_su_og_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_su_og_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_su_og_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_su_og_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_su_og_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
