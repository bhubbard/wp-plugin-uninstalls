-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zpm_devices', 'zpm_first_time', 'zpm_database_version', 'zpm/status/orders', 'zpm/priority/orders', 'zpm_review_notice_dismissed', 'zpm_welcome_notice_dismissed', 'zpm_frontend_settings', 'zpm_teams', 'zpm_chart_data', 'zpm_task_templates', 'zpm_default_template', 'zpm_tasks_progress', 'zpm_general_settings', 'zpm_notices', 'zpm_statuses', 'zpm/status/deleted_defaults', 'zpm_project_progress', 'zpm_task_settings', 'zpm_used', 'zpm_welcome_pro', 'zpm_access_settings', 'zpm_db_version');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE 'zpm_liked_projects_%';
DELETE FROM wp_options WHERE option_name LIKE 'zpm_liked_tasks_%';
DELETE FROM wp_options WHERE option_name LIKE 'zpm_followed_tasks_%';
DELETE FROM wp_options WHERE option_name LIKE 'zpm_import_id_%';
DELETE FROM wp_options WHERE option_name LIKE '%user_roles';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('zpm_tasks_last_sorting', 'zpm/projects/last_sorting_method', 'project_view', 'zpm_read_msg', '_zpm_unique_id', 'zpm_dashboard_projects', 'zpm_project_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('zpm_tasks_last_sorting', 'zpm/projects/last_sorting_method', 'project_view', 'zpm_read_msg', '_zpm_unique_id', 'zpm_dashboard_projects', 'zpm_project_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('zpm_tasks_last_sorting', 'zpm/projects/last_sorting_method', 'project_view', 'zpm_read_msg', '_zpm_unique_id', 'zpm_dashboard_projects', 'zpm_project_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('zpm_tasks_last_sorting', 'zpm/projects/last_sorting_method', 'project_view', 'zpm_read_msg', '_zpm_unique_id', 'zpm_dashboard_projects', 'zpm_project_settings');

