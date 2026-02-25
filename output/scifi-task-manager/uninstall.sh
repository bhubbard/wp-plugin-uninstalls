#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scifi-task-manager_roles'
wp option delete 'scifi-task-manager_menu'
wp option delete 'scifi-task-manager_tags'
wp option delete 'scifi-task-manager_menu_item'
wp option delete 'scifi-task-manager_priorities'
wp option delete 'scifi-task-manager_statuses'
wp option delete 'scifi-task-manager_mailer'
wp option delete 'scifi-task-manager_mail_from'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_scifi-task-manager_assignee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_scifi-task-manager_assignee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_scifi-task-manager_assignee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_scifi-task-manager_assignee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_scifi_task_manager_admin_widget'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_scifi_task_manager_admin_widget'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_scifi_task_manager_admin_widget'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_scifi_task_manager_admin_widget'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_scifi_task_manager_recieve_mails'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_scifi_task_manager_recieve_mails'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_scifi_task_manager_recieve_mails'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_scifi_task_manager_recieve_mails'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_scifi-task-manager_deadline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_scifi-task-manager_deadline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_scifi-task-manager_deadline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_scifi-task-manager_deadline'"
