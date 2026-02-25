#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zpm_devices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'zpm_first_time'
wp option delete 'zpm_database_version'
wp option delete 'zpm/status/orders'
wp option delete 'zpm/priority/orders'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'zpm_liked_projects_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'zpm_liked_tasks_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'zpm_followed_tasks_%'"
wp option delete 'zpm_review_notice_dismissed'
wp option delete 'zpm_welcome_notice_dismissed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'zpm_import_id_%'"
wp option delete 'zpm_frontend_settings'
wp option delete 'zpm_teams'
wp option delete 'zpm_chart_data'
wp option delete 'zpm_task_templates'
wp option delete 'zpm_default_template'
wp option delete 'zpm_tasks_progress'
wp option delete 'zpm_general_settings'
wp option delete 'zpm_notices'
wp option delete 'zpm_statuses'
wp option delete 'zpm/status/deleted_defaults'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%user_roles'"
wp option delete 'zpm_project_progress'
wp option delete 'zpm_task_settings'
wp option delete 'zpm_used'
wp option delete 'zpm_welcome_pro'
wp option delete 'zpm_access_settings'
wp option delete 'zpm_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zpm_tasks_last_sorting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zpm_tasks_last_sorting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zpm_tasks_last_sorting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zpm_tasks_last_sorting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zpm/projects/last_sorting_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zpm/projects/last_sorting_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zpm/projects/last_sorting_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zpm/projects/last_sorting_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'project_view'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'project_view'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'project_view'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'project_view'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zpm_read_msg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zpm_read_msg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zpm_read_msg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zpm_read_msg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zpm_unique_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zpm_unique_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zpm_unique_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zpm_unique_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zpm_dashboard_projects'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zpm_dashboard_projects'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zpm_dashboard_projects'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zpm_dashboard_projects'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zpm_project_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zpm_project_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zpm_project_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zpm_project_settings'"
