#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'task_breaker_tasks_table_version'
wp option delete 'task_breaker_comments_table_version'
wp option delete 'bp-pages'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'task_breaker_project_group_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'task_breaker_project_group_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'task_breaker_project_group_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'task_breaker_project_group_id'"
