-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_todo_deadline', '_todo_assignee', '_todo_priority', '_todo_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_todo_deadline', '_todo_assignee', '_todo_priority', '_todo_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_todo_deadline', '_todo_assignee', '_todo_priority', '_todo_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_todo_deadline', '_todo_assignee', '_todo_priority', '_todo_status');

