-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'wppm_garbage_collection_time', 'wppm-ap-modal', 'wppm-ap-settings', 'wppm_en_from_name', 'wppm_en_from_email', 'wppm_en_ignore_emails', 'wppm_default_email_notification_to_current_user', 'wppm_email_notification', 'wppm_user_role', 'wppm_project_time', 'wppm_rich_text_editor', 'wppm_toolbar_actions', 'wppm-ap-task-list', 'wppm_task_time', 'wppm-ap-grid-view', 'wppm_date_setting', 'wppm_hide_completed_status_task', 'wppm_hide_task_statuses_from_frontend', 'wppm_display_time_duration_task', 'wppm-ap-project-list', 'wppm_display_time_duration_project', 'wppm_hide_completed_status_proj', 'wppm_hide_proj_statuses_from_frontend', 'wppm_default_project_date', 'wppm_public_projects_permission', 'wppm-ap-individual-project', 'wppm_tinymce_visibility_open_project', 'wppm_proj_hide_comment_section', 'wppm-ap-individual-task', 'wppm_allow_coworkers_create_task', 'wppm_allow_coworkers_add_checklist', 'wppm_allow_coworkers_assign_users', 'wppm_allow_coworkers_change_status', 'wppm_default_task_list_view', 'wppm_default_task_date', 'wppm_default_edit_tasks_permission', 'wppm_default_project_status', 'wppm_default_task_status', 'wppm_tinymce_visibility_open_task', 'wppm_task_hide_comment_section', 'wppm-page-settings', 'wppm_print_settings', 'wppm_default_duplicate_project_email_notification', 'wppm_version', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wppm_current_filter_result', 'wppm_capability');
DELETE FROM wp_usermeta WHERE meta_key IN ('wppm_current_filter_result', 'wppm_capability');
DELETE FROM wp_termmeta WHERE meta_key IN ('wppm_current_filter_result', 'wppm_capability');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wppm_current_filter_result', 'wppm_capability');

