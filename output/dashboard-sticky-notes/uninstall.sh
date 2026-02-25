#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dsn_context'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dsn_context'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dsn_context'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dsn_context'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dsn_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dsn_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dsn_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dsn_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dsn_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dsn_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dsn_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dsn_target'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dsn_target_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dsn_target_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dsn_target_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dsn_target_user'"
