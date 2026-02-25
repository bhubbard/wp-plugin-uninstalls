-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scifi-task-manager_roles', 'scifi-task-manager_menu', 'scifi-task-manager_tags', 'scifi-task-manager_menu_item', 'scifi-task-manager_priorities', 'scifi-task-manager_statuses', 'scifi-task-manager_mailer', 'scifi-task-manager_mail_from');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_scifi-task-manager_assignee', '_scifi_task_manager_admin_widget', '_scifi_task_manager_recieve_mails', '_scifi-task-manager_deadline');
DELETE FROM wp_usermeta WHERE meta_key IN ('_scifi-task-manager_assignee', '_scifi_task_manager_admin_widget', '_scifi_task_manager_recieve_mails', '_scifi-task-manager_deadline');
DELETE FROM wp_termmeta WHERE meta_key IN ('_scifi-task-manager_assignee', '_scifi_task_manager_admin_widget', '_scifi_task_manager_recieve_mails', '_scifi-task-manager_deadline');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_scifi-task-manager_assignee', '_scifi_task_manager_admin_widget', '_scifi_task_manager_recieve_mails', '_scifi-task-manager_deadline');

