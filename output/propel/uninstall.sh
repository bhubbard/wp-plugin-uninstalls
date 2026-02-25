#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'PROPEL_DBVERSION'
wp option delete 'propel_options'
wp option delete 'PROPEL_INCLUDE_CSS'
wp option delete 'PROPEL_ERROR'
wp option delete 'propel_theme'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_propel_complete'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_propel_complete'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_propel_complete'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_propel_complete'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_propel_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_propel_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_propel_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_propel_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_propel_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_propel_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_propel_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_propel_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_propel_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_propel_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_propel_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_propel_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_propel_task_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_propel_task_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_propel_task_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_propel_task_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_propel_owner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_propel_owner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_propel_owner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_propel_owner'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_propel_task_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_propel_task_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_propel_task_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_propel_task_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_propel_time_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_propel_time_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_propel_time_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_propel_time_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_propel_time_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_propel_time_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_propel_time_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_propel_time_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_propel_project_owner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_propel_project_owner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_propel_project_owner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_propel_project_owner'"
