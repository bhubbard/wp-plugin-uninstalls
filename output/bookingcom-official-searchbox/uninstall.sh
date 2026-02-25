#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bos_searchbox_options'
wp option delete 'bos_searchbox_user_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bos_mb_destination'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bos_mb_destination'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bos_mb_destination'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bos_mb_destination'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bos_mb_dest_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bos_mb_dest_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bos_mb_dest_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bos_mb_dest_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bos_mb_dest_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bos_mb_dest_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bos_mb_dest_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bos_mb_dest_id'"
