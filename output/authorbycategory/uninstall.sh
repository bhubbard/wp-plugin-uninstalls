#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'autoauthor_category_user_map'
wp option delete 'autoauthor_access_control'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autoauthor_manual_choice_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autoauthor_manual_choice_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autoauthor_manual_choice_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autoauthor_manual_choice_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autoauthor_manual_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autoauthor_manual_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autoauthor_manual_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autoauthor_manual_author'"
