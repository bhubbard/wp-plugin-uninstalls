#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_todo_deadline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_todo_deadline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_todo_deadline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_todo_deadline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_todo_assignee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_todo_assignee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_todo_assignee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_todo_assignee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_todo_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_todo_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_todo_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_todo_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_todo_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_todo_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_todo_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_todo_status'"
