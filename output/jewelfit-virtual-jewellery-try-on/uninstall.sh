#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'try_on_head'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'try_on_head'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'try_on_head'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'try_on_head'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'try_on_ear'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'try_on_ear'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'try_on_ear'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'try_on_ear'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'try_on_neck'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'try_on_neck'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'try_on_neck'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'try_on_neck'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'selected_try_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'selected_try_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'selected_try_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'selected_try_option'"
