-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_projmanpro_related_project', '_projmanpro_task_due_date', '_projmanpro_task_assigned', '_projmanpro_project_assigned', '_projmanpro_project_due_date', '_projmanpro_project_status', '_projmanpro_task_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_projmanpro_related_project', '_projmanpro_task_due_date', '_projmanpro_task_assigned', '_projmanpro_project_assigned', '_projmanpro_project_due_date', '_projmanpro_project_status', '_projmanpro_task_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_projmanpro_related_project', '_projmanpro_task_due_date', '_projmanpro_task_assigned', '_projmanpro_project_assigned', '_projmanpro_project_due_date', '_projmanpro_project_status', '_projmanpro_task_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_projmanpro_related_project', '_projmanpro_task_due_date', '_projmanpro_task_assigned', '_projmanpro_project_assigned', '_projmanpro_project_due_date', '_projmanpro_project_status', '_projmanpro_task_status');

