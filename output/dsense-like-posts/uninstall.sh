#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_post_like_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_post_like_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_post_like_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_post_like_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_user_liked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_user_liked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_user_liked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_user_liked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_user_IP'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_user_IP'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_user_IP'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_user_IP'"
