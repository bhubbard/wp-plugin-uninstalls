#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'messages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'messages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'messages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'messages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'model'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'model'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'model'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'model'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eval_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eval_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eval_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eval_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eval_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eval_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eval_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eval_duration'"
