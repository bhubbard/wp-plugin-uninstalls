#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'education_pro_local_avatars_caps'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'simple_local_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'simple_local_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'simple_local_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'simple_local_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'big_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'big_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'big_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'big_avatar'"
