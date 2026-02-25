#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_qq_content_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_qq_content_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_qq_content_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_qq_content_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qq_possible_answers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qq_possible_answers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qq_possible_answers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qq_possible_answers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qq_enable_show_btn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qq_enable_show_btn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qq_enable_show_btn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qq_enable_show_btn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qq_good_answers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qq_good_answers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qq_good_answers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qq_good_answers'"
