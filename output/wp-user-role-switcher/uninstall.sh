#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_d9urs_role_switched'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_d9urs_role_switched'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_d9urs_role_switched'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_d9urs_role_switched'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_d9urs_original_user_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_d9urs_original_user_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_d9urs_original_user_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_d9urs_original_user_role'"
