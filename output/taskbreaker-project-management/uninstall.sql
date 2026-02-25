-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('task_breaker_tasks_table_version', 'task_breaker_comments_table_version', 'bp-pages');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('task_breaker_project_group_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('task_breaker_project_group_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('task_breaker_project_group_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('task_breaker_project_group_id');

