-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('user-todo-list-settings', 'group-todo-list-settings', 'data-retention-settings', 'user-todo-list-shortcodes', 'user_todo_list_settings', 'bptodo_version', 'active_sitewide_plugins', 'bptodo_cleanup_log');
DELETE FROM wp_options WHERE option_name LIKE 'bptodo_due_todos_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bptodo_demo_data', 'todo_group_id', 'todo_status', 'todo_priority', 'todo_due_date', 'botodo_associated_todo', 'todo_mail_setting', 'tokens', 'todo_last_day_mail_sent', 'todo_primary_id', 'todo_complete_time', 'todo_completed_date', 'todo_last_day_notification_sent', 'todo_user_id', 'todo_creator_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bptodo_demo_data', 'todo_group_id', 'todo_status', 'todo_priority', 'todo_due_date', 'botodo_associated_todo', 'todo_mail_setting', 'tokens', 'todo_last_day_mail_sent', 'todo_primary_id', 'todo_complete_time', 'todo_completed_date', 'todo_last_day_notification_sent', 'todo_user_id', 'todo_creator_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bptodo_demo_data', 'todo_group_id', 'todo_status', 'todo_priority', 'todo_due_date', 'botodo_associated_todo', 'todo_mail_setting', 'tokens', 'todo_last_day_mail_sent', 'todo_primary_id', 'todo_complete_time', 'todo_completed_date', 'todo_last_day_notification_sent', 'todo_user_id', 'todo_creator_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bptodo_demo_data', 'todo_group_id', 'todo_status', 'todo_priority', 'todo_due_date', 'botodo_associated_todo', 'todo_mail_setting', 'tokens', 'todo_last_day_mail_sent', 'todo_primary_id', 'todo_complete_time', 'todo_completed_date', 'todo_last_day_notification_sent', 'todo_user_id', 'todo_creator_id');

