#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'task_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'task_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'task_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'task_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'task_summary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'task_summary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'task_summary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'task_summary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'task_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'task_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'task_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'task_description'"
