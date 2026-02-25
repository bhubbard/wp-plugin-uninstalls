-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chkr_tasks_order', 'chkr_completed_tasks');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('chkr_task_priority', 'chkr_task_labels', 'chkr_task_due_date', 'chkr_task_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('chkr_task_priority', 'chkr_task_labels', 'chkr_task_due_date', 'chkr_task_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('chkr_task_priority', 'chkr_task_labels', 'chkr_task_due_date', 'chkr_task_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('chkr_task_priority', 'chkr_task_labels', 'chkr_task_due_date', 'chkr_task_status');

