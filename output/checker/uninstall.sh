#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chkr_tasks_order'
wp option delete 'chkr_completed_tasks'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chkr_task_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chkr_task_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chkr_task_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chkr_task_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chkr_task_labels'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chkr_task_labels'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chkr_task_labels'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chkr_task_labels'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chkr_task_due_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chkr_task_due_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chkr_task_due_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chkr_task_due_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chkr_task_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chkr_task_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chkr_task_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chkr_task_status'"
