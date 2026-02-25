#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_user_avatars_roles'
wp option delete 'wp_user_avatars_block_gravatar'
wp option delete 'wp_user_avatars'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_user_avatars'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_user_avatars'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_user_avatars'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_user_avatars'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_user_avatars_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_user_avatars_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_user_avatars_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_user_avatars_rating'"
