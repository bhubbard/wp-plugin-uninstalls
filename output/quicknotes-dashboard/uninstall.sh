#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qnd_context'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qnd_context'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qnd_context'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qnd_context'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qnd_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qnd_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qnd_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qnd_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qnd_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qnd_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qnd_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qnd_target'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qnd_target_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qnd_target_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qnd_target_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qnd_target_user'"
