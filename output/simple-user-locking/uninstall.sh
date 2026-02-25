#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sulock_temporarily_locked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sulock_temporarily_locked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sulock_temporarily_locked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sulock_temporarily_locked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sulock_permanently_locked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sulock_permanently_locked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sulock_permanently_locked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sulock_permanently_locked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sulock_permlock_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sulock_permlock_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sulock_permlock_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sulock_permlock_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sulock_templock_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sulock_templock_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sulock_templock_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sulock_templock_meta'"
