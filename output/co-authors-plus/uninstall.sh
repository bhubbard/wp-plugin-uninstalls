#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cap-user_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cap-user_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cap-user_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cap-user_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_original_author_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_original_author_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_original_author_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_original_author_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_original_author_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_original_author_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_original_author_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_original_author_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_coauthor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_coauthor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_coauthor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_coauthor'"
