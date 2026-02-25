#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'user-todo-list-settings'
wp option delete 'group-todo-list-settings'
wp option delete 'data-retention-settings'
wp option delete 'user-todo-list-shortcodes'
wp option delete 'user_todo_list_settings'
wp option delete 'bptodo_version'
wp option delete 'active_sitewide_plugins'
wp option delete 'bptodo_cleanup_log'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bptodo_due_todos_%' OR option_name LIKE '_site_transient_bptodo_due_todos_%'"

# Clear Cron Jobs
wp cron event delete 'bptodo_daily_cleanup'
wp cron event delete 'bptodo_todo_notification'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bptodo_demo_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bptodo_demo_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bptodo_demo_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bptodo_demo_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'todo_group_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'todo_group_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'todo_group_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'todo_group_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'todo_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'todo_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'todo_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'todo_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'todo_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'todo_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'todo_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'todo_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'todo_due_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'todo_due_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'todo_due_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'todo_due_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'botodo_associated_todo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'botodo_associated_todo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'botodo_associated_todo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'botodo_associated_todo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'todo_mail_setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'todo_mail_setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'todo_mail_setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'todo_mail_setting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tokens'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'todo_last_day_mail_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'todo_last_day_mail_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'todo_last_day_mail_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'todo_last_day_mail_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'todo_primary_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'todo_primary_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'todo_primary_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'todo_primary_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'todo_complete_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'todo_complete_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'todo_complete_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'todo_complete_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'todo_completed_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'todo_completed_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'todo_completed_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'todo_completed_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'todo_last_day_notification_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'todo_last_day_notification_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'todo_last_day_notification_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'todo_last_day_notification_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'todo_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'todo_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'todo_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'todo_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'todo_creator_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'todo_creator_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'todo_creator_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'todo_creator_id'"
