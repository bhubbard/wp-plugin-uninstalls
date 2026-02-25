#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'avatar_manager'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_avatar_manager_custom_avatar_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_avatar_manager_custom_avatar_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_avatar_manager_custom_avatar_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_avatar_manager_custom_avatar_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_avatar_manager_is_custom_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_avatar_manager_is_custom_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_avatar_manager_is_custom_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_avatar_manager_is_custom_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_avatar_manager_custom_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_avatar_manager_custom_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_avatar_manager_custom_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_avatar_manager_custom_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'avatar_manager_custom_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'avatar_manager_custom_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'avatar_manager_custom_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'avatar_manager_custom_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'avatar_manager_avatar_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'avatar_manager_avatar_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'avatar_manager_avatar_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'avatar_manager_avatar_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'avatar_manager_blog_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'avatar_manager_blog_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'avatar_manager_blog_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'avatar_manager_blog_id'"
