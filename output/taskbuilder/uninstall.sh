#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"
wp option delete 'wppm_garbage_collection_time'
wp option delete 'wppm-ap-modal'
wp option delete 'wppm-ap-settings'
wp option delete 'wppm_en_from_name'
wp option delete 'wppm_en_from_email'
wp option delete 'wppm_en_ignore_emails'
wp option delete 'wppm_default_email_notification_to_current_user'
wp option delete 'wppm_email_notification'
wp option delete 'wppm_user_role'
wp option delete 'wppm_project_time'
wp option delete 'wppm_rich_text_editor'
wp option delete 'wppm_toolbar_actions'
wp option delete 'wppm-ap-task-list'
wp option delete 'wppm_task_time'
wp option delete 'wppm-ap-grid-view'
wp option delete 'wppm_date_setting'
wp option delete 'wppm_hide_completed_status_task'
wp option delete 'wppm_hide_task_statuses_from_frontend'
wp option delete 'wppm_display_time_duration_task'
wp option delete 'wppm-ap-project-list'
wp option delete 'wppm_display_time_duration_project'
wp option delete 'wppm_hide_completed_status_proj'
wp option delete 'wppm_hide_proj_statuses_from_frontend'
wp option delete 'wppm_default_project_date'
wp option delete 'wppm_public_projects_permission'
wp option delete 'wppm-ap-individual-project'
wp option delete 'wppm_tinymce_visibility_open_project'
wp option delete 'wppm_proj_hide_comment_section'
wp option delete 'wppm-ap-individual-task'
wp option delete 'wppm_allow_coworkers_create_task'
wp option delete 'wppm_allow_coworkers_add_checklist'
wp option delete 'wppm_allow_coworkers_assign_users'
wp option delete 'wppm_allow_coworkers_change_status'
wp option delete 'wppm_default_task_list_view'
wp option delete 'wppm_default_task_date'
wp option delete 'wppm_default_edit_tasks_permission'
wp option delete 'wppm_default_project_status'
wp option delete 'wppm_default_task_status'
wp option delete 'wppm_tinymce_visibility_open_task'
wp option delete 'wppm_task_hide_comment_section'
wp option delete 'wppm-page-settings'
wp option delete 'wppm_print_settings'
wp option delete 'wppm_default_duplicate_project_email_notification'
wp option delete 'wppm_version'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'wppm_cron_one_minute'
wp cron event delete 'wppm_cron_five_minute'
wp cron event delete 'wppm_cron_daily'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppm_current_filter_result'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppm_current_filter_result'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppm_current_filter_result'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppm_current_filter_result'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppm_capability'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppm_capability'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppm_capability'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppm_capability'"
