-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('PROPEL_DBVERSION', 'propel_options', 'PROPEL_INCLUDE_CSS', 'PROPEL_ERROR', 'propel_theme');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_propel_complete', '_propel_priority', '_propel_end_date', '_propel_start_date', '_propel_task_metadata', '_propel_owner', '_propel_task_user', '_propel_time_start', '_propel_time_end', '_propel_project_owner');
DELETE FROM wp_usermeta WHERE meta_key IN ('_propel_complete', '_propel_priority', '_propel_end_date', '_propel_start_date', '_propel_task_metadata', '_propel_owner', '_propel_task_user', '_propel_time_start', '_propel_time_end', '_propel_project_owner');
DELETE FROM wp_termmeta WHERE meta_key IN ('_propel_complete', '_propel_priority', '_propel_end_date', '_propel_start_date', '_propel_task_metadata', '_propel_owner', '_propel_task_user', '_propel_time_start', '_propel_time_end', '_propel_project_owner');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_propel_complete', '_propel_priority', '_propel_end_date', '_propel_start_date', '_propel_task_metadata', '_propel_owner', '_propel_task_user', '_propel_time_start', '_propel_time_end', '_propel_project_owner');

