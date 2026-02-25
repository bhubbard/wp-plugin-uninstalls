#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'basic_user_avatars_caps'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'basic_user_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'basic_user_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'basic_user_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'basic_user_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_avatar'"
