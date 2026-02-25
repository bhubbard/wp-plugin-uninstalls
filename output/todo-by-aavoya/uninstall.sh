#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wptba_aau'
wp option delete 'wptba_autoLogOutDuration'
wp option delete 'wptba_encryption_key'
wp option delete 'wptba_logo'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wptba_user_post_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wptba_user_post_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wptba_user_post_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wptba_user_post_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_todo_board_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_todo_board_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_todo_board_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_todo_board_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wptba_user_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wptba_user_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wptba_user_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wptba_user_meta'"
